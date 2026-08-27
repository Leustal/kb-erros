<?php
header('Content-Type: application/json; charset=utf-8');

// Carrega o autoloader do Composer (se estiver usando vlucas/phpdotenv)
if (file_exists(__DIR__ . '/vendor/autoload.php')) {
    require_once __DIR__ . '/vendor/autoload.php';
    if (class_exists('Dotenv\Dotenv')) {
        $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
        $dotenv->safeLoad();
    }
}

// Tenta carregar do $_ENV, $_SERVER ou getenv()
$host    = $_ENV['DB_HOST'] ?? getenv('DB_HOST') ?? '127.0.0.1';
$db      = $_ENV['DB_DATABASE'] ?? $_ENV['DB_NAME'] ?? getenv('DB_DATABASE') ?? getenv('DB_NAME') ?? '';
$user    = $_ENV['DB_USERNAME'] ?? $_ENV['DB_USER'] ?? getenv('DB_USERNAME') ?? getenv('DB_USER') ?? '';
$pass    = $_ENV['DB_PASSWORD'] ?? $_ENV['DB_PASS'] ?? getenv('DB_PASSWORD') ?? getenv('DB_PASS') ?? '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    echo json_encode(['error' => 'Falha na conexão com o banco de dados: ' . $e->getMessage()]);
    exit;
}

$action = $_GET['action'] ?? 'read';

// ------------------------------------------------------------------
// 1. AÇÃO: READ (LISTAGEM E BUSCA)
// ------------------------------------------------------------------
if ($action === 'read') {
    $search = $_GET['search'] ?? '';
    $page   = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;
    $limit  = isset($_GET['limit']) ? max(1, (int)$_GET['limit']) : 10;
    $offset = ($page - 1) * $limit;

    $whereClause = '';
    $params = [];

    if (!empty($search)) {
        $whereClause = "WHERE titulo LIKE :search 
                           OR descricao LIKE :search 
                           OR solucao LIKE :search 
                           OR categoria LIKE :search 
                           OR tags LIKE :search 
                           OR veredito LIKE :search 
                           OR objetivo LIKE :search";
        $params[':search'] = '%' . $search . '%';
    }

    $countStmt = $pdo->prepare("SELECT COUNT(*) FROM chamados $whereClause");
    $countStmt->execute($params);
    $totalRecords = $countStmt->fetchColumn();
    $totalPages   = ceil($totalRecords / $limit);

    $query = "SELECT * FROM chamados $whereClause ORDER BY id DESC LIMIT $limit OFFSET $offset";
    $stmt  = $pdo->prepare($query);

    foreach ($params as $key => $val) {
        $stmt->bindValue($key, $val);
    }
    $stmt->bindValue('$limit', $limit, PDO::PARAM_INT);
    $stmt->bindValue('$offset', $offset, PDO::PARAM_INT);

    $stmt->execute();
    $data = $stmt->fetchAll();

    echo json_encode([
        'data'        => $data,
        'total'       => (int)$totalRecords,
        'page'        => $page,
        'total_pages' => (int)$totalPages
    ], JSON_UNESCAPED_UNICODE);
    exit;
}

// ------------------------------------------------------------------
// 2. AÇÃO: UPDATE (EDIÇÃO FLEXÍVEL)
// ------------------------------------------------------------------
if ($action === 'update') {
    $input = json_decode(file_get_contents('php://input'), true);

    if (!$input || !isset($input['id'])) {
        echo json_encode(['success' => false, 'error' => 'ID do registro não informado.']);
        exit;
    }

    $id = (int)$input['id'];

    $titulo          = $input['aba_solucao']['titulo'] ?? '';
    $categoria       = $input['aba_solucao']['categoria'] ?? '';
    $tags            = $input['aba_solucao']['tags'] ?? '';
    $descricao       = $input['aba_solucao']['problema'] ?? '';
    $solucao         = $input['aba_solucao']['solucao'] ?? '';

    $nota_final      = (isset($input['aba_auditoria']['nota_final']) && $input['aba_auditoria']['nota_final'] !== '') 
                        ? (float)$input['aba_auditoria']['nota_final'] 
                        : null;

    $veredito        = $input['aba_auditoria']['veredito'] ?? '';
    $objetivo        = $input['aba_auditoria']['objetivo'] ?? '';
    $oportunidade_ps = $input['aba_auditoria']['oportunidade_ps'] ?? '';

    try {
        $stmt = $pdo->prepare("
            UPDATE chamados SET 
                titulo = :titulo,
                categoria = :categoria,
                tags = :tags,
                descricao = :descricao,
                solucao = :solucao,
                nota_final = :nota_final,
                veredito = :veredito,
                objetivo = :objetivo,
                oportunidade_ps = :oportunidade_ps
            WHERE id = :id
        ");

        $success = $stmt->execute([
            ':titulo'          => $titulo,
            ':categoria'       => $categoria,
            ':tags'            => $tags,
            ':descricao'       => $descricao,
            ':solucao'         => $solucao,
            ':nota_final'      => $nota_final,
            ':veredito'        => $veredito,
            ':objetivo'        => $objetivo,
            ':oportunidade_ps' => $oportunidade_ps,
            ':id'              => $id
        ]);

        echo json_encode(['success' => $success]);
    } catch (\PDOException $e) {
        echo json_encode(['success' => false, 'error' => $e->getMessage()]);
    }
    exit;
}

// ------------------------------------------------------------------
// 3. AÇÃO: DELETE (EXCLUSÃO)
// ------------------------------------------------------------------
if ($action === 'delete') {
    $id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

    if ($id <= 0) {
        echo json_encode(['success' => false, 'error' => 'ID inválido.']);
        exit;
    }

    try {
        $stmt = $pdo->prepare("DELETE FROM chamados WHERE id = :id");
        $success = $stmt->execute([':id' => $id]);

        echo json_encode(['success' => $success]);
    } catch (\PDOException $e) {
        echo json_encode(['success' => false, 'error' => $e->getMessage()]);
    }
    exit;
}

echo json_encode(['error' => 'Ação inválida.']);
exit;