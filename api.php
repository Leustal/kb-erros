<?php
header('Content-Type: application/json');

$host = '10.100.53.223'; // Ajustar para o IP/Host do seu container MariaDB
$db   = 'kb_erros';
$user = 'root';      // Ajustar usuário
$pass = 'AZFkaa61282';     // Ajustar senha

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $user, $pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (\PDOException $e) {
    echo json_encode(['error' => 'Falha na conexão: ' . $e->getMessage()]);
    exit;
}

$action = $_GET['action'] ?? 'list';

// BUSCAR / LISTAR ERROS
if ($action === 'list') {
    $q = trim($_GET['q'] ?? '');
    
    if (!empty($q)) {
        $stmt = $pdo->prepare("SELECT * FROM erros WHERE titulo LIKE :q OR descricao LIKE :q OR solucao LIKE :q OR tags LIKE :q ORDER BY id DESC");
        $stmt->execute(['q' => "%{$q}%"]);
    } else {
        $stmt = $pdo->query("SELECT * FROM erros ORDER BY id DESC LIMIT 50");
    }
    
    echo json_encode($stmt->fetchAll());
    exit;
}

// ADICIONAR ERRO
if ($action === 'add' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    
    if (empty($data['titulo']) || empty($data['solucao'])) {
        echo json_encode(['success' => false, 'message' => 'Título e Solução são obrigatórios.']);
        exit;
    }

    $stmt = $pdo->prepare("INSERT INTO erros (titulo, categoria, descricao, solucao, tags) VALUES (:titulo, :categoria, :descricao, :solucao, :tags)");
    $success = $stmt->execute([
        'titulo'    => $data['titulo'],
        'categoria' => $data['categoria'] ?? 'Geral',
        'descricao' => $data['descricao'] ?? '',
        'solucao'   => $data['solucao'],
        'tags'      => $data['tags'] ?? ''
    ]);

    echo json_encode(['success' => $success]);
    exit;
}

// EXCLUIR ERRO
if ($action === 'delete' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = intval($data['id'] ?? 0);

    if ($id > 0) {
        $stmt = $pdo->prepare("DELETE FROM erros WHERE id = :id");
        $success = $stmt->execute(['id' => $id]);
        echo json_encode(['success' => $success]);
    } else {
        echo json_encode(['success' => false, 'message' => 'ID inválido.']);
    }
    exit;
}