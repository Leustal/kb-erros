<?php
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

/**
 * Função leve para carregar variáveis do arquivo .env
 */
function loadEnv($filePath = __DIR__ . '/.env') {
    if (!file_exists($filePath)) {
        return;
    }

    $lines = file($filePath, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        $line = trim($line);
        if (empty($line) || strpos($line, '#') === 0) {
            continue;
        }

        list($name, $value) = explode('=', $line, 2);
        $name = trim($name);
        $value = trim($value, " \t\n\r\0\x0B\"'");

        if (!array_key_exists($name, $_SERVER) && !array_key_exists($name, $_ENV)) {
            putenv("{$name}={$value}");
            $_ENV[$name] = $value;
            $_SERVER[$name] = $value;
        }
    }
}

// Carrega as variáveis de ambiente
loadEnv();

// Recupera credenciais com valores fallback de segurança
$driver = getenv('DB_DRIVER') ?: 'pgsql';
$host   = getenv('DB_HOST')   ?: 'localhost';
$port   = getenv('DB_PORT')   ?: '5432';
$db     = getenv('DB_NAME')   ?: 'base_conhecimento';
$user   = getenv('DB_USER')   ?: 'postgres';
$pass   = getenv('DB_PASS')   ?: '';

try {
    if ($driver === 'pgsql') {
        $dsn = "pgsql:host=$host;port=$port;dbname=$db";
    } else {
        $dsn = "mysql:host=$host;port=$port;dbname=$db;charset=utf8mb4";
    }

    $pdo = new PDO($dsn, $user, $pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro na conexão com o banco de dados: ' . $e->getMessage()]);
    exit();
}

$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        handleGet($pdo);
        break;
    case 'POST':
        handlePost($pdo);
        break;
    case 'PUT':
        handlePut($pdo);
        break;
    case 'DELETE':
        handleDelete($pdo);
        break;
    default:
        http_response_code(405);
        echo json_encode(['error' => 'Método não permitido']);
        break;
}

// LISTAGEM E BUSCA
function handleGet($pdo) {
    $search = isset($_GET['search']) ? trim($_GET['search']) : '';
    $page   = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;
    $limit  = isset($_GET['limit']) ? max(1, (int)$_GET['limit']) : 10;
    $offset = ($page - 1) * $limit;

    try {
        if (!empty($search)) {
            $sqlCount = "SELECT COUNT(*) FROM registros 
                         WHERE titulo ILIKE :s OR categoria ILIKE :s OR tags ILIKE :s OR descricao ILIKE :s OR solucao ILIKE :s";
            $stmtCount = $pdo->prepare($sqlCount);
            $stmtCount->execute([':s' => "%$search%"]);
            $total = (int)$stmtCount->fetchColumn();

            $sqlData = "SELECT * FROM registros 
                        WHERE titulo ILIKE :s OR categoria ILIKE :s OR tags ILIKE :s OR descricao ILIKE :s OR solucao ILIKE :s 
                        ORDER BY id DESC LIMIT :limit OFFSET :offset";
            $stmtData = $pdo->prepare($sqlData);
            $stmtData->bindValue(':s', "%$search%", PDO::PARAM_STR);
            $stmtData->bindValue(':limit', $limit, PDO::PARAM_INT);
            $stmtData->bindValue(':offset', $offset, PDO::PARAM_INT);
            $stmtData->execute();
            $data = $stmtData->fetchAll();
        } else {
            $total = (int)$pdo->query("SELECT COUNT(*) FROM registros")->fetchColumn();

            $sqlData = "SELECT * FROM registros ORDER BY id DESC LIMIT :limit OFFSET :offset";
            $stmtData = $pdo->prepare($sqlData);
            $stmtData->bindValue(':limit', $limit, PDO::PARAM_INT);
            $stmtData->bindValue(':offset', $offset, PDO::PARAM_INT);
            $stmtData->execute();
            $data = $stmtData->fetchAll();
        }

        $totalPages = ceil($total / $limit);

        echo json_encode([
            'data' => $data,
            'total' => $total,
            'page' => $page,
            'total_pages' => $totalPages
        ]);
    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao buscar registros: ' . $e->getMessage()]);
    }
}

// CADASTRO
function handlePost($pdo) {
    $input = json_decode(file_get_contents('php://input'), true);

    if (empty($input['titulo']) || empty($input['solucao'])) {
        http_response_code(400);
        echo json_encode(['error' => 'Título e Solução são campos obrigatórios.']);
        return;
    }

    try {
        $sql = "INSERT INTO registros (titulo, categoria, tags, descricao, solucao) 
                VALUES (:titulo, :categoria, :tags, :descricao, :solucao)";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':titulo'    => $input['titulo'],
            ':categoria' => $input['categoria'] ?? 'Geral',
            ':tags'      => $input['tags'] ?? '',
            ':descricao' => $input['descricao'] ?? '',
            ':solucao'   => $input['solucao']
        ]);

        echo json_encode(['success' => true, 'id' => $pdo->lastInsertId()]);
    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao cadastrar registro: ' . $e->getMessage()]);
    }
}

// EDIÇÃO
function handlePut($pdo) {
    $input = json_decode(file_get_contents('php://input'), true);

    if (empty($input['id']) || empty($input['titulo']) || empty($input['solucao'])) {
        http_response_code(400);
        echo json_encode(['error' => 'ID, Título e Solução são obrigatórios para edição.']);
        return;
    }

    try {
        $sql = "UPDATE registros 
                SET titulo = :titulo, categoria = :categoria, tags = :tags, descricao = :descricao, solucao = :solucao 
                WHERE id = :id";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':id'        => $input['id'],
            ':titulo'    => $input['titulo'],
            ':categoria' => $input['categoria'] ?? 'Geral',
            ':tags'      => $input['tags'] ?? '',
            ':descricao' => $input['descricao'] ?? '',
            ':solucao'   => $input['solucao']
        ]);

        echo json_encode(['success' => true]);
    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao atualizar registro: ' . $e->getMessage()]);
    }
}

// EXCLUSÃO
function handleDelete($pdo) {
    $id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

    if ($id <= 0) {
        http_response_code(400);
        echo json_encode(['error' => 'ID inválido para exclusão.']);
        return;
    }

    try {
        $stmt = $pdo->prepare("DELETE FROM registros WHERE id = :id");
        $stmt->execute([':id' => $id]);

        echo json_encode(['success' => true]);
    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode(['error' => 'Erro ao excluir registro: ' . $e->getMessage()]);
    }
}