<?php
header('Content-Type: application/json; charset=utf-8');

// 1. Carregador simples de arquivo .env nativo em PHP
function loadEnv($path) {
    if (!file_exists($path)) {
        return false;
    }
    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        if (strpos(trim($line), '#') === 0) continue;
        list($name, $value) = explode('=', $line, 2);
        $name = trim($name);
        $value = trim($value, " \t\n\r\0\x0B\"'");
        if (!array_key_exists($name, $_SERVER) && !array_key_exists($name, $_ENV)) {
            putenv("{$name}={$value}");
            $_ENV[$name] = $value;
            $_SERVER[$name] = $value;
        }
    }
    return true;
}

// Carrega as variáveis do arquivo .env da raiz
loadEnv(__DIR__ . '/.env');

$db_host = getenv('DB_HOST') ?: 'localhost';
$db_port = getenv('DB_PORT') ?: '3306';
$db_name = getenv('DB_NAME') ?: 'kb_erros';
$db_user = getenv('DB_USER') ?: 'root';
$db_pass = getenv('DB_PASS') ?: '';

// 2. Conexão PDO com MariaDB/MySQL
try {
    $dsn = "mysql:host={$db_host};port={$db_port};dbname={$db_name};charset=utf8mb4";
    $pdo = new PDO($dsn, $db_user, $db_pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    echo json_encode(['error' => 'Falha na conexão com o banco de dados: ' . $e->getMessage()]);
    exit;
}

$method = $_SERVER['REQUEST_METHOD'];

// 3. Rota GET: Listagem e Pesquisa com Ordem Alfabética e Relevância Garantidas
if ($method === 'GET') {
    $search = isset($_GET['search']) ? trim($_GET['search']) : '';
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    $limit = isset($_GET['limit']) ? (int)$_GET['limit'] : 10;
    $offset = ($page - 1) * $limit;

    $whereClause = "";
    // TRIM(titulo) remove espaços em branco iniciais que afetam a ordem A-Z
    $orderByClause = "ORDER BY TRIM(titulo) ASC, id ASC"; 
    $params = [];

    if (!empty($search)) {
        $whereClause = "WHERE titulo LIKE :s OR descricao LIKE :s OR solucao LIKE :s OR tags LIKE :s OR categoria LIKE :s";
        $params[':s'] = "%{$search}%";

        // Ordenação por Relevância:
        // 1º Encontrado no Título (Prioridade Máxima)
        // 2º Encontrado nas Tags ou Categoria
        // 3º Encontrado na Descrição ou Solução
        // Desempate: Ordem alfabética pelo Título limpo e ID
        $orderByClause = "ORDER BY 
            CASE 
                WHEN titulo LIKE :s THEN 1
                WHEN tags LIKE :s OR categoria LIKE :s THEN 2
                ELSE 3
            END ASC, 
            TRIM(titulo) ASC, 
            id ASC";
    }

    // Contagem total para paginação
    $stmtCount = $pdo->prepare("SELECT COUNT(*) as total FROM erros $whereClause");
    $stmtCount->execute($params);
    $total = $stmtCount->fetch()['total'];

    // Consulta de registros
    $stmt = $pdo->prepare("SELECT * FROM erros $whereClause $orderByClause LIMIT :limit OFFSET :offset");
    
    foreach ($params as $key => $val) {
        $stmt->bindValue($key, $val);
    }
    $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
    $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
    $stmt->execute();

    $data = $stmt->fetchAll();

    echo json_encode([
        'data' => $data,
        'total' => (int)$total,
        'page' => $page,
        'limit' => $limit,
        'total_pages' => ceil($total / $limit)
    ]);
    exit;
}

// Lendo payload JSON enviado nas requisições POST/PUT
$input = json_decode(file_get_contents('php://input'), true);

// 4. Rota POST: Inserir novo registro
if ($method === 'POST') {
    $titulo = $input['titulo'] ?? '';
    $categoria = $input['categoria'] ?? 'Geral';
    $tags = $input['tags'] ?? '';
    $descricao = $input['descricao'] ?? '';
    $solucao = $input['solucao'] ?? '';

    if (empty($titulo) || empty($solucao)) {
        echo json_encode(['error' => 'Título e Solução são campos obrigatórios.']);
        exit;
    }

    $stmt = $pdo->prepare("INSERT INTO erros (titulo, categoria, tags, descricao, solucao) VALUES (:titulo, :categoria, :tags, :descricao, :solucao)");
    $stmt->execute([
        ':titulo' => trim($titulo),
        ':categoria' => trim($categoria),
        ':tags' => trim($tags),
        ':descricao' => trim($descricao),
        ':solucao' => trim($solucao)
    ]);

    echo json_encode(['success' => true, 'id' => $pdo->lastInsertId()]);
    exit;
}

// 5. Rota PUT: Atualizar registro existente
if ($method === 'PUT') {
    $id = $input['id'] ?? null;
    $titulo = $input['titulo'] ?? '';
    $categoria = $input['categoria'] ?? 'Geral';
    $tags = $input['tags'] ?? '';
    $descricao = $input['descricao'] ?? '';
    $solucao = $input['solucao'] ?? '';

    if (!$id || empty($titulo) || empty($solucao)) {
        echo json_encode(['error' => 'ID, Título e Solução são obrigatórios para edição.']);
        exit;
    }

    $stmt = $pdo->prepare("UPDATE erros SET titulo = :titulo, categoria = :categoria, tags = :tags, descricao = :descricao, solucao = :solucao WHERE id = :id");
    $stmt->execute([
        ':id' => $id,
        ':titulo' => trim($titulo),
        ':categoria' => trim($categoria),
        ':tags' => trim($tags),
        ':descricao' => trim($descricao),
        ':solucao' => trim($solucao)
    ]);

    echo json_encode(['success' => true]);
    exit;
}

// 6. Rota DELETE: Remover registro
if ($method === 'DELETE') {
    $id = $_GET['id'] ?? null;

    if (!$id) {
        echo json_encode(['error' => 'ID não informado.']);
        exit;
    }

    $stmt = $pdo->prepare("DELETE FROM erros WHERE id = :id");
    $stmt->execute([':id' => $id]);

    echo json_encode(['success' => true]);
    exit;
}