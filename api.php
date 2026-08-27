<?php
// api.php - Backend para Knowledge Base com integração Chatwoot/n8n/MySQL

// ----------------------------------------------------------------------
// 1. CABEÇALHOS CORS E CONFIGURAÇÃO
// ----------------------------------------------------------------------
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');
header('Content-Type: application/json; charset=utf-8');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// Oculta warnings para evitar corromper a resposta JSON
ini_set('display_errors', 0);
error_reporting(E_ALL);

// ----------------------------------------------------------------------
// 2. CARREGAMENTO DE VARIÁVEIS DE AMBIENTE (.env)
// ----------------------------------------------------------------------
function loadEnv($path) {
    if (!file_exists($path)) return false;
    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        if (strpos(trim($line), '#') === 0) continue;
        if (strpos($line, '=') === false) continue;
        list($name, $value) = explode('=', $line, 2);
        $name = trim($name);
        $value = trim($value);
        if (!array_key_exists($name, $_SERVER) && !array_key_exists($name, $_ENV)) {
            putenv(sprintf('%s=%s', $name, $value));
            $_ENV[$name] = $value;
            $_SERVER[$name] = $value;
        }
    }
    return true;
}

if (!loadEnv(__DIR__ . '/.env')) {
    loadEnv(__DIR__ . '/../.env');
}

// ----------------------------------------------------------------------
// 3. CONEXÃO COM O BANCO DE DADOS (PDO MySQL)
// ----------------------------------------------------------------------
$host    = getenv('DB_HOST') ?: '127.0.0.1';
$db      = getenv('DB_NAME') ?: getenv('DB_DATABASE');
$user    = getenv('DB_USER') ?: getenv('DB_USERNAME');
$pass    = getenv('DB_PASS') ?: getenv('DB_PASSWORD');
$charset = getenv('DB_CHARSET') ?: 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    http_response_code(500);
    echo json_encode(['status' => 'error', 'error' => 'Erro de conexão com o banco de dados: ' . $e->getMessage()]);
    exit;
}

// ----------------------------------------------------------------------
// 4. PROCESSAMENTO DE REQUISIÇÕES
// ----------------------------------------------------------------------
$method = $_SERVER['REQUEST_METHOD'];
$action = $_GET['action'] ?? '';

// Leitura do payload JSON (para POST e PUT)
$rawInput = file_get_contents('php://input');
$input = json_decode($rawInput, true) ?: [];

try {
    // ==========================================
    // A) GET - LISTAR E PESQUISAR REGISTROS
    // ==========================================
    if ($method === 'GET' && $action !== 'delete') {
        $search = isset($_GET['search']) ? trim($_GET['search']) : '';
        $page   = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $limit  = isset($_GET['limit']) ? (int)$_GET['limit'] : 10;
        
        if ($page < 1) $page = 1;
        if ($limit < 1) $limit = 10;
        $offset = ($page - 1) * $limit;

        $whereClauses = [];
        $params = [];

        if (!empty($search)) {
            $whereClauses[] = "(titulo LIKE :search OR solucao LIKE :search OR categoria LIKE :search OR tags LIKE :search OR descricao LIKE :search OR veredito LIKE :search)";
            $params[':search'] = '%' . $search . '%';
        }

        $whereSql = count($whereClauses) > 0 ? 'WHERE ' . implode(' AND ', $whereClauses) : '';

        // Contagem Total
        $countSql = "SELECT COUNT(*) as total FROM kb_erros $whereSql";
        $stmtCount = $pdo->prepare($countSql);
        foreach ($params as $key => $val) {
            $stmtCount->bindValue($key, $val);
        }
        $stmtCount->execute();
        $total = (int)$stmtCount->fetch()['total'];

        // Consulta Principal A-Z
        $sql = "SELECT * FROM kb_erros 
                $whereSql 
                ORDER BY LOWER(TRIM(BOTH '\"' FROM TRIM(BOTH '\'' FROM TRIM(titulo)))) COLLATE utf8mb4_unicode_ci ASC 
                LIMIT :limit OFFSET :offset";
        
        $stmt = $pdo->prepare($sql);
        foreach ($params as $key => $val) {
            $stmt->bindValue($key, $val, PDO::PARAM_STR);
        }
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
        $stmt->execute();
        $data = $stmt->fetchAll();

        echo json_encode([
            'status'      => 'success',
            'total'       => $total,
            'page'        => $page,
            'limit'       => $limit,
            'total_pages' => ceil($total / $limit),
            'data'        => $data
        ]);
        exit;
    }

    // ==========================================
    // B) POST - INSERIR REGISTRO (n8n ou Manual)
    // ==========================================
    if ($method === 'POST' && $action !== 'update') {
        $abaSolucao   = $input['aba_solucao'] ?? [];
        $abaAuditoria = $input['aba_auditoria'] ?? $input['aba_auditoria_qualidade'] ?? [];

        // Extração dos campos da Solução
        $titulo    = trim($abaSolucao['titulo'] ?? $input['titulo'] ?? '');
        $solucao   = trim($abaSolucao['solucao'] ?? $input['solucao'] ?? '');
        $categoria = trim($abaSolucao['categoria'] ?? $input['categoria'] ?? 'Geral');

        // Tratamento de Tags
        $rawTags = $abaSolucao['tags'] ?? $input['tags'] ?? '';
        $tags    = is_array($rawTags) ? implode(',', $rawTags) : trim($rawTags);

        // Tratamento da Descrição / Metadados de Atendimento
        if (!empty($input['descricao'])) {
            $descricao = trim($input['descricao']);
        } elseif (!empty($abaSolucao['problema'])) {
            $atendente = $input['atendente_nome'] ?? 'Suporte';
            $cliente   = $input['cliente_email'] ?? 'Não informado';
            $inicio    = $input['hora_inicio'] ?? 'Não informado';
            $fim       = $input['hora_finalizacao'] ?? 'Não informado';
            $problema  = trim($abaSolucao['problema']);

            $descricao = "• Nome do atendente: {$atendente}\n• Email cliente: {$cliente}\n• Hora do início do atendimento: {$inicio}\n• Hora finalização do atendimento: {$fim}\n• Problema do atendimento: {$problema}";
        } else {
            $descricao = '';
        }

        // Extração dos campos da Auditoria
        $objetivo          = trim($abaAuditoria['objetivo'] ?? $input['objetivo'] ?? '');
        $veredito          = trim($abaAuditoria['veredito'] ?? $input['veredito'] ?? '');
        $oportunidadePs    = trim($abaAuditoria['oportunidade_ps'] ?? $input['oportunidade_ps'] ?? '');
        $notaFinal         = isset($abaAuditoria['nota_final']) ? (float)$abaAuditoria['nota_final'] : (isset($input['nota_final']) ? (float)$input['nota_final'] : null);
        $relatorioMarkdown = trim($abaAuditoria['relatorio_markdown'] ?? $input['relatorio_markdown'] ?? '');

        // Validação básica de campos obrigatórios
        if (empty($titulo) || empty($solucao)) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Campos obrigatórios ausentes: titulo e solucao']);
            exit;
        }

        $sql = "INSERT INTO kb_erros 
                (titulo, categoria, tags, descricao, solucao, objetivo, veredito, oportunidade_ps, nota_final, relatorio_markdown) 
                VALUES 
                (:titulo, :categoria, :tags, :descricao, :solucao, :objetivo, :veredito, :oportunidade_ps, :nota_final, :relatorio_markdown)";

        $stmt = $pdo->prepare($sql);
        $success = $stmt->execute([
            ':titulo'             => $titulo,
            ':categoria'          => $categoria,
            ':tags'               => $tags,
            ':descricao'          => $descricao,
            ':solucao'            => $solucao,
            ':objetivo'           => $objetivo,
            ':veredito'           => $veredito,
            ':oportunidade_ps'    => $oportunidadePs,
            ':nota_final'         => $notaFinal,
            ':relatorio_markdown' => $relatorioMarkdown
        ]);

        echo json_encode([
            'status'  => 'success',
            'success' => $success, 
            'id'      => $pdo->lastInsertId()
        ]);
        exit;
    }

    // ==========================================
    // C) PUT / POST (action=update) - ATUALIZAR
    // ==========================================
    if ($method === 'PUT' || ($method === 'POST' && $action === 'update')) {
        $id = $input['id'] ?? $_GET['id'] ?? null;

        $abaSolucao   = $input['aba_solucao'] ?? [];
        $abaAuditoria = $input['aba_auditoria'] ?? $input['aba_auditoria_qualidade'] ?? [];

        $titulo    = trim($abaSolucao['titulo'] ?? $input['titulo'] ?? '');
        $solucao   = trim($abaSolucao['solucao'] ?? $input['solucao'] ?? '');

        if (empty($id) || empty($titulo) || empty($solucao)) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Campos obrigatórios ausentes: id, titulo e solucao']);
            exit;
        }

        $categoria         = trim($abaSolucao['categoria'] ?? $input['categoria'] ?? '');
        $rawTags           = $abaSolucao['tags'] ?? $input['tags'] ?? '';
        $tags              = is_array($rawTags) ? implode(',', $rawTags) : trim($rawTags);
        $descricao         = trim($input['descricao'] ?? $abaSolucao['problema'] ?? '');
        $objetivo          = trim($abaAuditoria['objetivo'] ?? $input['objetivo'] ?? '');
        $veredito          = trim($abaAuditoria['veredito'] ?? $input['veredito'] ?? '');
        $oportunidadePs    = trim($abaAuditoria['oportunidade_ps'] ?? $input['oportunidade_ps'] ?? '');
        $notaFinal         = isset($abaAuditoria['nota_final']) ? (float)$abaAuditoria['nota_final'] : (isset($input['nota_final']) ? (float)$input['nota_final'] : null);
        $relatorioMarkdown = trim($abaAuditoria['relatorio_markdown'] ?? $input['relatorio_markdown'] ?? '');

        $sql = "UPDATE kb_erros SET 
                titulo = :titulo, 
                categoria = :categoria, 
                tags = :tags, 
                descricao = :descricao, 
                solucao = :solucao,
                objetivo = :objetivo,
                veredito = :veredito,
                oportunidade_ps = :oportunidade_ps,
                nota_final = :nota_final,
                relatorio_markdown = :relatorio_markdown 
                WHERE id = :id";

        $stmt = $pdo->prepare($sql);
        $success = $stmt->execute([
            ':id'                 => (int)$id,
            ':titulo'             => $titulo,
            ':categoria'          => $categoria,
            ':tags'               => $tags,
            ':descricao'          => $descricao,
            ':solucao'            => $solucao,
            ':objetivo'           => $objetivo,
            ':veredito'           => $veredito,
            ':oportunidade_ps'    => $oportunidadePs,
            ':nota_final'         => $notaFinal,
            ':relatorio_markdown' => $relatorioMarkdown
        ]);

        echo json_encode(['status' => 'success', 'success' => $success]);
        exit;
    }

    // ==========================================
    // D) DELETE / GET (action=delete) - EXCLUIR
    // ==========================================
    if ($method === 'DELETE' || ($method === 'GET' && $action === 'delete')) {
        $id = isset($_GET['id']) ? (int)$_GET['id'] : (isset($input['id']) ? (int)$input['id'] : 0);

        if ($id <= 0) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'ID inválido para exclusão']);
            exit;
        }

        $sql = "DELETE FROM kb_erros WHERE id = :id";
        $stmt = $pdo->prepare($sql);
        $success = $stmt->execute([':id' => $id]);

        echo json_encode(['status' => 'success', 'success' => $success]);
        exit;
    }

} catch (\Exception $e) {
    http_response_code(500);
    echo json_encode(['status' => 'error', 'error' => 'Erro interno no servidor: ' . $e->getMessage()]);
    exit;
}