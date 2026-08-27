<?php
header('Content-Type: application/json; charset=utf-8');

// Função para carregar as variáveis de ambiente a partir do arquivo .env
function loadEnv($filePath) {
    if (!file_exists($filePath)) {
        return;
    }

    $lines = file($filePath, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        $line = trim($line);
        // Ignora comentários
        if (strpos($line, '#') === 0) {
            continue;
        }

        // Separa a chave e o valor pelo primeiro sinal de '='
        if (strpos($line, '=') !== false) {
            list($key, $value) = explode('=', $line, 2);
            $key = trim($key);
            $value = trim($value);

            // Remove aspas simples ou duplas se existirem nas extremidades
            $value = trim($value, '"\'');

            if (!empty($key)) {
                putenv("{$key}={$value}");
                $_ENV[$key] = $value;
                $_SERVER[$key] = $value;
            }
        }
    }
}

// Carrega as variáveis do caminho especificado
loadEnv('/var/www/webroot/ROOT/.env');

// Leitura das configurações via variáveis de ambiente (com valores padrão/fallback)
$host    = getenv('DB_HOST') ?: $_ENV['DB_HOST'] ?: 'localhost';
$db      = getenv('DB_NAME') ?: $_ENV['DB_NAME'] ?: 'kb_database';
$user    = getenv('DB_USER') ?: $_ENV['DB_USER'] ?: 'root';
$pass    = getenv('DB_PASS') ?: $_ENV['DB_PASS'] ?: '';
$charset = getenv('DB_CHARSET') ?: $_ENV['DB_CHARSET'] ?: 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    echo json_encode(['success' => false, 'error' => 'Erro de conexão com o banco de dados: ' . $e->getMessage()]);
    exit;
}

$action = $_GET['action'] ?? 'read';
$rawInput = file_get_contents('php://input');
$data = json_decode($rawInput, true) ?? [];

switch ($action) {
    case 'create':
    case 'update':
        $id = $data['id'] ?? $_GET['id'] ?? null;
        
        // Extrai dados suportando tanto payload plano quanto aninhado
        $titulo = $data['titulo'] ?? $data['aba_solucao']['titulo'] ?? '';
        $solucao = $data['solucao'] ?? $data['aba_solucao']['solucao'] ?? '';
        $categoria = $data['categoria'] ?? $data['aba_solucao']['categoria'] ?? '';
        $tags = $data['tags'] ?? $data['aba_solucao']['tags'] ?? '';
        $descricao = $data['descricao'] ?? $data['problema'] ?? $data['aba_solucao']['problema'] ?? '';
        
        $nota_final = $data['nota_final'] ?? $data['aba_auditoria']['nota_final'] ?? null;
        $veredito = $data['veredito'] ?? $data['aba_auditoria']['veredito'] ?? '';
        $objetivo = $data['objetivo'] ?? $data['aba_auditoria']['objetivo'] ?? '';
        $oportunidade_ps = $data['oportunidade_ps'] ?? $data['oportunidade'] ?? $data['aba_auditoria']['oportunidade_ps'] ?? '';

        if (trim($titulo) === '' || trim($solucao) === '') {
            echo json_encode(['success' => false, 'error' => 'Título e Solução são obrigatórios.']);
            exit;
        }

        if ($action === 'create') {
            $sql = "INSERT INTO registros (titulo, categoria, tags, descricao, solucao, nota_final, veredito, objetivo, oportunidade_ps) 
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $success = $stmt->execute([$titulo, $categoria, $tags, $descricao, $solucao, $nota_final, $veredito, $objetivo, $oportunidade_ps]);
            echo json_encode(['success' => $success, 'id' => $pdo->lastInsertId()]);
        } else {
            if (!$id) {
                echo json_encode(['success' => false, 'error' => 'ID não informado para atualização.']);
                exit;
            }
            $sql = "UPDATE registros 
                    SET titulo = ?, categoria = ?, tags = ?, descricao = ?, solucao = ?, nota_final = ?, veredito = ?, objetivo = ?, oportunidade_ps = ? 
                    WHERE id = ?";
            $stmt = $pdo->prepare($sql);
            $success = $stmt->execute([$titulo, $categoria, $tags, $descricao, $solucao, $nota_final, $veredito, $objetivo, $oportunidade_ps, $id]);
            echo json_encode(['success' => $success]);
        }
        break;

    case 'delete':
        $id = $_GET['id'] ?? $data['id'] ?? null;

        if (!$id) {
            echo json_encode(['success' => false, 'error' => 'ID é obrigatório para exclusão.']);
            exit;
        }

        $stmt = $pdo->prepare("DELETE FROM registros WHERE id = ?");
        $success = $stmt->execute([$id]);
        echo json_encode(['success' => $success]);
        break;

    case 'read':
    default:
        $search = $_GET['search'] ?? '';
        $page = max(1, (int)($_GET['page'] ?? 1));
        $limit = max(1, (int)($_GET['limit'] ?? 10));
        $offset = ($page - 1) * $limit;

        if (!empty($search)) {
            $searchTerm = "%$search%";
            $countSql = "SELECT COUNT(*) FROM registros WHERE titulo LIKE ? OR descricao LIKE ? OR solucao LIKE ? OR categoria LIKE ? OR tags LIKE ?";
            $stmtCount = $pdo->prepare($countSql);
            $stmtCount->execute([$searchTerm, $searchTerm, $searchTerm, $searchTerm, $searchTerm]);
            $totalRows = $stmtCount->fetchColumn();

            $dataSql = "SELECT * FROM registros WHERE titulo LIKE ? OR descricao LIKE ? OR solucao LIKE ? OR categoria LIKE ? OR tags LIKE ? ORDER BY id DESC LIMIT ? OFFSET ?";
            $stmtData = $pdo->prepare($dataSql);
            $stmtData->bindValue(1, $searchTerm, PDO::PARAM_STR);
            $stmtData->bindValue(2, $searchTerm, PDO::PARAM_STR);
            $stmtData->bindValue(3, $searchTerm, PDO::PARAM_STR);
            $stmtData->bindValue(4, $searchTerm, PDO::PARAM_STR);
            $stmtData->bindValue(5, $searchTerm, PDO::PARAM_STR);
            $stmtData->bindValue(6, $limit, PDO::PARAM_INT);
            $stmtData->bindValue(7, $offset, PDO::PARAM_INT);
            $stmtData->execute();
        } else {
            $totalRows = $pdo->query("SELECT COUNT(*) FROM registros")->fetchColumn();
            
            $stmtData = $pdo->prepare("SELECT * FROM registros ORDER BY id DESC LIMIT ? OFFSET ?");
            $stmtData->bindValue(1, $limit, PDO::PARAM_INT);
            $stmtData->bindValue(2, $offset, PDO::PARAM_INT);
            $stmtData->execute();
        }

        $records = $stmtData->fetchAll();
        $totalPages = ceil($totalRows / $limit);

        echo json_encode([
            'data' => $records,
            'total_pages' => $totalPages,
            'current_page' => $page,
            'total_records' => $totalRows
        ]);
        break;
}