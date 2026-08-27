<?php
// Configurações de Cabeçalho
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// Configurações do Banco de Dados
$db_host = 'localhost';
$db_name = 'seu_banco_de_dados';
$db_user = 'seu_usuario';
$db_pass = 'sua_senha';
$tabela  = 'sua_tabela';

try {
    $pdo = new PDO("mysql:host={$db_host};dbname={$db_name};charset=utf8mb4", $db_user, $db_pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'error' => 'Falha na conexão com o banco de dados: ' . $e->getMessage()]);
    exit;
}

$action = $_GET['action'] ?? 'list';

// ROUTER: UPDATE
if ($action === 'update') {
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        echo json_encode(['success' => false, 'error' => 'Método não permitido']);
        exit;
    }

    $input = file_get_contents('php://input');
    $data = json_decode($input, true);

    $id = $data['id'] ?? null;

    if (!$id) {
        echo json_encode(['success' => false, 'error' => 'ID do registro não informado.']);
        exit;
    }

    // Mapeamento dos campos vindos da aba_solucao
    $titulo    = $data['aba_solucao']['titulo'] ?? '';
    $categoria = $data['aba_solucao']['categoria'] ?? '';
    $tags      = $data['aba_solucao']['tags'] ?? '';
    $descricao = $data['aba_solucao']['problema'] ?? '';
    $solucao   = $data['aba_solucao']['solucao'] ?? '';

    // Mapeamento dos campos vindos da aba_auditoria
    $nota_raw  = $data['aba_auditoria']['nota_final'] ?? null;
    $nota_final = (is_numeric($nota_raw) && $nota_raw !== '') ? floatval($nota_raw) : null;
    
    $veredito        = $data['aba_auditoria']['veredito'] ?? '';
    $objetivo        = $data['aba_auditoria']['objetivo'] ?? '';
    $oportunidade_ps = $data['aba_auditoria']['oportunidade_ps'] ?? '';

    try {
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
        $stmt->bindValue(':id', $id, PDO::PARAM_INT);

        $stmt->execute();

        echo json_encode(['success' => true, 'message' => 'Registro atualizado com sucesso']);
    } catch (PDOException $e) {
        echo json_encode(['success' => false, 'error' => $e->getMessage()]);
    }
    exit;
}

// ROUTER: DELETE
if ($action === 'delete') {
    $id = $_GET['id'] ?? null;

    if (!$id) {
        echo json_encode(['success' => false, 'error' => 'ID não fornecido.']);
        exit;
    }

    try {
        $stmt = $pdo->prepare("DELETE FROM {$tabela} WHERE id = :id");
        $stmt->bindValue(':id', $id, PDO::PARAM_INT);
        $stmt->execute();

        echo json_encode(['success' => true, 'message' => 'Registro excluído com sucesso']);
    } catch (PDOException $e) {
        echo json_encode(['success' => false, 'error' => $e->getMessage()]);
    }
    exit;
}

// ROUTER: LIST / SEARCH (Default)
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
        
        // Count total
        $countStmt = $pdo->prepare("SELECT COUNT(*) FROM {$tabela} {$whereSql}");
        $countStmt->bindValue(':search', "%{$search}%");
        $countStmt->execute();
        $totalRows = $countStmt->fetchColumn();

        // Query dados
        $stmt = $pdo->prepare("SELECT * FROM {$tabela} {$whereSql} ORDER BY id DESC LIMIT :limit OFFSET :offset");
        $stmt->bindValue(':search', "%{$search}%");
    } else {
        // Count total
        $totalRows = $pdo->query("SELECT COUNT(*) FROM {$tabela}")->fetchColumn();

        // Query dados
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
        'total_records' => $totalRows,
        'total_pages' => $totalPages > 0 ? $totalPages : 1
    ]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'error' => $e->getMessage()]);
}