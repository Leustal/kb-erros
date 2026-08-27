<?php
// Configurações de Cabeçalho e CORS
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// -------------------------------------------------------------
// BUSCA RECURSIVA E PARSER MANUAL DO .ENV
// -------------------------------------------------------------
function findAndLoadEnv() {
    $dir = __DIR__;
    $envPath = null;
    
    // Procura o arquivo .env no diretório atual e sobe até 3 níveis
    for ($i = 0; $i < 3; $i++) {
        if (file_exists($dir . '/.env')) {
            $envPath = $dir . '/.env';
            break;
        }
        $dir = dirname($dir);
    }

    if (!$envPath) return [];

    $lines = file($envPath, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    $env = [];
    foreach ($lines as $line) {
        $line = trim($line);
        if (empty($line) || strpos($line, '#') === 0) continue;
        list($name, $value) = explode('=', $line, 2) + [NULL, NULL];
        if ($name !== NULL && $value !== NULL) {
            $env[trim($name)] = trim($value, " \t\n\r\0\x0B\"'");
        }
    }
    return $env;
}

$env = findAndLoadEnv();

// Mapeamento flexível de chaves do .env com suporte a fallback de ambiente
$db_host = $env['DB_HOST'] ?? getenv('DB_HOST') ?: 'localhost';
$db_name = $env['DB_DATABASE'] ?? $env['DB_NAME'] ?? getenv('DB_DATABASE') ?: getenv('DB_NAME');
$db_user = $env['DB_USERNAME'] ?? $env['DB_USER'] ?? getenv('DB_USERNAME') ?: getenv('DB_USER');
$db_pass = $env['DB_PASSWORD'] ?? $env['DB_PASS'] ?? getenv('DB_PASSWORD') ?: getenv('DB_PASS');
$tabela  = $env['DB_TABLE'] ?? getenv('DB_TABLE') ?: 'kb_audits';

try {
    $pdo = new PDO("mysql:host={$db_host};dbname={$db_name};charset=utf8mb4", $db_user, $db_pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        'success' => false, 
        'error' => 'Falha na conexão com o banco de dados via .env: ' . $e->getMessage()
    ]);
    exit;
}

$action = $_GET['action'] ?? 'list';

// -------------------------------------------------------------
// ROUTER: UPDATE / CREATE (POST)
// -------------------------------------------------------------
if ($_SERVER['REQUEST_METHOD'] === 'POST' || $action === 'update' || $action === 'create') {
    
    $rawInput = file_get_contents('php://input');
    $data = json_decode($rawInput, true);

    if (!$data) {
        $data = $_POST;
    }

    $id = $data['id'] ?? ($_GET['id'] ?? null);

    // Mapeamento flexível: Aba Solução ou Raiz
    $titulo = '';
    if (isset($data['aba_solucao']['titulo'])) {
        $titulo = trim($data['aba_solucao']['titulo']);
    } elseif (isset($data['titulo'])) {
        $titulo = trim($data['titulo']);
    }

    $solucao = '';
    if (isset($data['aba_solucao']['solucao'])) {
        $solucao = trim($data['aba_solucao']['solucao']);
    } elseif (isset($data['solucao'])) {
        $solucao = trim($data['solucao']);
    }

    $categoria = $data['aba_solucao']['categoria'] ?? ($data['categoria'] ?? '');
    $tags      = $data['aba_solucao']['tags'] ?? ($data['tags'] ?? '');
    $descricao = $data['aba_solucao']['problema'] ?? ($data['descricao'] ?? '');

    // Mapeamento flexível: Aba Auditoria ou Raiz
    $nota_raw        = $data['aba_auditoria']['nota_final'] ?? ($data['nota_final'] ?? null);
    $nota_final      = (is_numeric($nota_raw) && $nota_raw !== '') ? floatval($nota_raw) : null;
    $veredito        = $data['aba_auditoria']['veredito'] ?? ($data['veredito'] ?? '');
    $objetivo        = $data['aba_auditoria']['objetivo'] ?? ($data['objetivo'] ?? '');
    $oportunidade_ps = $data['aba_auditoria']['oportunidade_ps'] ?? ($data['oportunidade_ps'] ?? '');

    // Validação dos campos obrigatórios
    if (empty($titulo) || empty($solucao)) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Título e Solução são obrigatórios.']);
        exit;
    }

    try {
        if ($id) {
            $sql = "UPDATE {$tabela} SET 
                        titulo = :titulo,
                        categoria = :categoria,
                        tags = :tags,
                        descricao = :descricao,
                        solucao = :solucao,
                        nota_final = :nota_final,
                        veredito = :veredito,
                        objetivo = :objetivo,
                        oportunidade_ps = :oportunidade_ps
                    WHERE id = :id";

            $stmt = $pdo->prepare($sql);
            $stmt->bindValue(':id', $id, PDO::PARAM_INT);
        } else {
            $sql = "INSERT INTO {$tabela} 
                        (titulo, categoria, tags, descricao, solucao, nota_final, veredito, objetivo, oportunidade_ps) 
                    VALUES 
                        (:titulo, :categoria, :tags, :descricao, :solucao, :nota_final, :veredito, :objetivo, :oportunidade_ps)";

            $stmt = $pdo->prepare($sql);
        }

        $stmt->bindValue(':titulo', $titulo);
        $stmt->bindValue(':categoria', $categoria);
        $stmt->bindValue(':tags', $tags);
        $stmt->bindValue(':descricao', $descricao);
        $stmt->bindValue(':solucao', $solucao);
        
        if ($nota_final === null) {
            $stmt->bindValue(':nota_final', null, PDO::PARAM_NULL);
        } else {
            $stmt->bindValue(':nota_final', $nota_final);
        }

        $stmt->bindValue(':veredito', $veredito);
        $stmt->bindValue(':objetivo', $objetivo);
        $stmt->bindValue(':oportunidade_ps', $oportunidade_ps);

        $stmt->execute();

        echo json_encode(['success' => true, 'message' => 'Registro salvo com sucesso!']);
    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Erro no banco de dados: ' . $e->getMessage()]);
    }
    exit;
}

// -------------------------------------------------------------
// ROUTER: DELETE
// -------------------------------------------------------------
if ($action === 'delete') {
    $id = $_GET['id'] ?? null;

    if (!$id) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'ID do registro não fornecido.']);
        exit;
    }

    try {
        $stmt = $pdo->prepare("DELETE FROM {$tabela} WHERE id = :id");
        $stmt->bindValue(':id', $id, PDO::PARAM_INT);
        $stmt->execute();

        echo json_encode(['success' => true, 'message' => 'Registro excluído com sucesso!']);
    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => $e->getMessage()]);
    }
    exit;
}

// -------------------------------------------------------------
// ROUTER: LIST / SEARCH (Default GET)
// -------------------------------------------------------------
$search = trim($_GET['search'] ?? '');
$page   = max(1, intval($_GET['page'] ?? 1));
$limit  = max(1, intval($_GET['limit'] ?? 10));
$offset = ($page - 1) * $limit;

try {
    if (!empty($search)) {
        $whereSql = "WHERE titulo LIKE :search 
                        OR descricao LIKE :search 
                        OR solucao LIKE :search 
                        OR categoria LIKE :search 
                        OR tags LIKE :search";

        $countStmt = $pdo->prepare("SELECT COUNT(*) FROM {$tabela} {$whereSql}");
        $countStmt->bindValue(':search', "%{$search}%");
        $countStmt->execute();
        $totalRows = $countStmt->fetchColumn();

        $stmt = $pdo->prepare("SELECT * FROM {$tabela} {$whereSql} ORDER BY id DESC LIMIT :limit OFFSET :offset");
        $stmt->bindValue(':search', "%{$search}%");
    } else {
        $totalRows = $pdo->query("SELECT COUNT(*) FROM {$tabela}")->fetchColumn();

        $stmt = $pdo->prepare("SELECT * FROM {$tabela} ORDER BY id DESC LIMIT :limit OFFSET :offset");
    }

    $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
    $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
    $stmt->execute();

    $data = $stmt->fetchAll();
    $totalPages = ceil($totalRows / $limit);

    echo json_encode([
        'data' => $data,
        'page' => $page,
        'limit' => $limit,
        'total_records' => (int)$totalRows,
        'total_pages' => $totalPages > 0 ? (int)$totalPages : 1
    ]);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['success' => false, 'error' => $e->getMessage()]);
}