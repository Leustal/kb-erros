<?php
header('Content-Type: application/json; charset=utf-8');

// 1. Função para carregar variáveis de ambiente do arquivo .env
function loadEnv($path) {
    if (!file_exists($path)) {
        return false;
    }
    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        // Ignora comentários
        if (strpos(trim($line), '#') === 0) {
            continue;
        }
        if (strpos($line, '=') !== false) {
            list($name, $value) = explode('=', $line, 2);
            $_ENV[trim($name)] = trim($value);
        }
    }
    return true;
}

// Carrega o arquivo .env localizado na raiz do projeto
loadEnv(__DIR__ . '/.env');

// 2. Define as credenciais do banco de dados utilizando o .env (com valores padrão/fallback)
$host = $_ENV['DB_HOST'] ?? 'localhost';
$db   = $_ENV['DB_NAME'] ?? 'kb_erros';
$user = $_ENV['DB_USER'] ?? 'root';
$pass = $_ENV['DB_PASS'] ?? '';

// 3. Conexão com o MariaDB usando PDO
try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $user, $pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (\PDOException $e) {
    http_response_code(500);
    echo json_encode([
        'success' => false, 
        'error' => 'Falha na conexão com o banco de dados.'
    ]);
    exit;
}

// 4. Identifica a ação requisitada pela Query String (ex: api.php?action=list)
$action = $_GET['action'] ?? 'list';

// -------------------------------------------------------------
// ROTA: LISTAR / BUSCAR ERROS
// -------------------------------------------------------------
if ($action === 'list') {
    $q = trim($_GET['q'] ?? '');
    
    if (!empty($q)) {
        // Busca flexível em múltiplos campos
        $sql = "SELECT * FROM erros 
                WHERE titulo LIKE :q 
                   OR descricao LIKE :q 
                   OR solucao LIKE :q 
                   OR tags LIKE :q 
                   OR categoria LIKE :q 
                ORDER BY id DESC";
        $stmt = $pdo->prepare($sql);
        $stmt->execute(['q' => "%{$q}%"]);
    } else {
        // Retorna os últimos 50 cadastros caso a busca esteja vazia
        $stmt = $pdo->query("SELECT * FROM erros ORDER BY id DESC LIMIT 50");
    }
    
    echo json_encode($stmt->fetchAll());
    exit;
}

// -------------------------------------------------------------
// ROTA: ADICIONAR NOVO ERRO
// -------------------------------------------------------------
if ($action === 'add' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    
    if (empty($data['titulo']) || empty($data['solucao'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Título e Solução são obrigatórios.']);
        exit;
    }

    $stmt = $pdo->prepare("INSERT INTO erros (titulo, categoria, descricao, solucao, tags) VALUES (:titulo, :categoria, :descricao, :solucao, :tags)");
    
    $success = $stmt->execute([
        'titulo'    => trim($data['titulo']),
        'categoria' => !empty($data['categoria']) ? trim($data['categoria']) : 'Geral',
        'descricao' => !empty($data['descricao']) ? trim($data['descricao']) : '',
        'solucao'   => trim($data['solucao']),
        'tags'      => !empty($data['tags']) ? trim($data['tags']) : ''
    ]);

    echo json_encode(['success' => $success]);
    exit;
}

// -------------------------------------------------------------
// ROTA: EXCLUIR ERRO
// -------------------------------------------------------------
if ($action === 'delete' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = intval($data['id'] ?? 0);

    if ($id > 0) {
        $stmt = $pdo->prepare("DELETE FROM erros WHERE id = :id");
        $success = $stmt->execute(['id' => $id]);
        echo json_encode(['success' => $success]);
    } else {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'ID inválido fornecido.']);
    }
    exit;
}

// Ação não reconhecida
http_response_code(404);
echo json_encode(['error' => 'Ação não encontrada.']);
