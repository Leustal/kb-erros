<?php
header('Content-Type: application/json; charset=utf-8');

// Função simples para carregar variáveis do arquivo .env
function loadEnv($path) {
    if (!file_exists($path)) {
        return false;
    }
    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        if (strpos(trim($line), '#') === 0) continue; // Pula comentários
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

// Carrega o .env (tenta na mesma pasta ou no diretório pai)
if (!loadEnv(__DIR__ . '/.env')) {
    loadEnv(__DIR__ . '/../.env');
}

// Resgate das credenciais do .env (com fallbacks de segurança)
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
    echo json_encode(['error' => 'Erro de conexão com o banco: ' . $e->getMessage()]);
    exit;
}

$method = $_SERVER['REQUEST_METHOD'];

// ==========================================
// 1. GET - LISTAR / BUSCAR COM PAGINAÇÃO A-Z
// ==========================================
if ($method === 'GET') {
    $search = isset($_GET['search']) ? trim($_GET['search']) : '';
    $page   = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    $limit  = isset($_GET['limit']) ? (int)$_GET['limit'] : 10;
    
    if ($page < 1) $page = 1;
    if ($limit < 1) $limit = 10;
    $offset = ($page - 1) * $limit;

    // Clausula WHERE
    $whereClauses = [];
    $params = [];

    if (!empty($search)) {
        $whereClauses[] = "(titulo LIKE :search OR solucao LIKE :search OR categoria LIKE :search OR tags LIKE :search OR descricao LIKE :search)";
        $params[':search'] = '%' . $search . '%';
    }

    $whereSql = count($whereClauses) > 0 ? 'WHERE ' . implode(' AND ', $whereClauses) : '';

    // 1. Contagem total de registros
    $countSql = "SELECT COUNT(*) as total FROM kb_erros $whereSql";
    $stmtCount = $pdo->prepare($countSql);
    foreach ($params as $key => $val) {
        $stmtCount->bindValue($key, $val);
    }
    $stmtCount->execute();
    $total = (int)$stmtCount->fetch()['total'];

    // 2. Busca com ORDENAÇÃO GLOBAL A-Z antes do LIMIT/OFFSET
    $sql = "SELECT * FROM kb_erros $whereSql ORDER BY TRIM(BOTH '\"' FROM TRIM(BOTH '\'' FROM TRIM(titulo))) ASC LIMIT :limit OFFSET :offset";
    
    $stmt = $pdo->prepare($sql);
    foreach ($params as $key => $val) {
        $stmt->bindValue($key, $val, PDO::PARAM_STR);
    }
    $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
    $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
    $stmt->execute();
    $data = $stmt->fetchAll();

    echo json_encode([
        'total'       => $total,
        'page'        => $page,
        'limit'       => $limit,
        'total_pages' => ceil($total / $limit),
        'data'        => $data
    ]);
    exit;
}

// Ler payload JSON para POST e PUT
$input = json_decode(file_get_contents('php://input'), true);

// ==========================================
// 2. POST - CRIAR NOVO REGISTRO
// ==========================================
if ($method === 'POST') {
    if (empty($input['titulo']) || empty($input['solucao'])) {
        echo json_encode(['error' => 'Campos obrigatórios ausentes: titulo e solucao']);
        exit;
    }

    $sql = "INSERT INTO kb_erros (titulo, categoria, tags, descricao, solucao) VALUES (:titulo, :categoria, :tags, :descricao, :solucao)";
    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([
        ':titulo'    => trim($input['titulo']),
        ':categoria' => isset($input['categoria']) ? trim($input['categoria']) : '',
        ':tags'      => isset($input['tags']) ? trim($input['tags']) : '',
        ':descricao' => isset($input['descricao']) ? trim($input['descricao']) : '',
        ':solucao'   => trim($input['solucao'])
    ]);

    echo json_encode(['success' => $success, 'id' => $pdo->lastInsertId()]);
    exit;
}

// ==========================================
// 3. PUT - ATUALIZAR REGISTRO
// ==========================================
if ($method === 'PUT') {
    if (empty($input['id']) || empty($input['titulo']) || empty($input['solucao'])) {
        echo json_encode(['error' => 'Campos obrigatórios ausentes: id, titulo, solucao']);
        exit;
    }

    $sql = "UPDATE kb_erros SET titulo = :titulo, categoria = :categoria, tags = :tags, descricao = :descricao, solucao = :solucao WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([
        ':id'        => (int)$input['id'],
        ':titulo'    => trim($input['titulo']),
        ':categoria' => isset($input['categoria']) ? trim($input['categoria']) : '',
        ':tags'      => isset($input['tags']) ? trim($input['tags']) : '',
        ':descricao' => isset($input['descricao']) ? trim($input['descricao']) : '',
        ':solucao'   => trim($input['solucao'])
    ]);

    echo json_encode(['success' => $success]);
    exit;
}

// ==========================================
// 4. DELETE - DELETAR REGISTRO
// ==========================================
if ($method === 'DELETE') {
    $id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
    if ($id <= 0) {
        echo json_encode(['error' => 'ID inválido para exclusão']);
        exit;
    }

    $sql = "DELETE FROM kb_erros WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([':id' => $id]);

    echo json_encode(['success' => $success]);
    exit;
}