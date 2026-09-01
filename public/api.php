<?php

header('Content-Type: application/json; charset=utf-8');

/*
|--------------------------------------------------------------------------
| CONFIGURAÇÃO
|--------------------------------------------------------------------------
*/

function responder(array $dados, int $status = 200): void
{
    http_response_code($status);

    echo json_encode(
        $dados,
        JSON_UNESCAPED_UNICODE |
        JSON_UNESCAPED_SLASHES
    );

    exit;
}


/*
|--------------------------------------------------------------------------
| CARREGAR .ENV
|--------------------------------------------------------------------------
*/

function loadEnv(string $filePath): void
{
    if (!file_exists($filePath)) {
        return;
    }

    $lines = file(
        $filePath,
        FILE_IGNORE_NEW_LINES |
        FILE_SKIP_EMPTY_LINES
    );

    foreach ($lines as $line) {

        $line = trim($line);

        if (
            $line === '' ||
            strpos($line, '#') === 0
        ) {
            continue;
        }

        if (strpos($line, '=') === false) {
            continue;
        }

        [$key, $value] =
            explode('=', $line, 2);

        $key =
            trim($key);

        $value =
            trim(
                $value,
                "\"'\t "
            );

        if ($key !== '') {

            putenv(
                "{$key}={$value}"
            );

            $_ENV[$key] =
                $value;

            $_SERVER[$key] =
                $value;
        }
    }
}


loadEnv(
    dirname(__DIR__) . '/.env'
);


/*
|--------------------------------------------------------------------------
| BANCO DE DADOS
|--------------------------------------------------------------------------
*/

$host =
    getenv('DB_HOST') ?:
    ($_ENV['DB_HOST'] ?? 'localhost');

$db =
    getenv('DB_NAME') ?:
    ($_ENV['DB_NAME'] ?? 'kb_erros');

$user =
    getenv('DB_USER') ?:
    ($_ENV['DB_USER'] ?? 'root');

$pass =
    getenv('DB_PASS') ?:
    ($_ENV['DB_PASS'] ?? '');

$charset =
    getenv('DB_CHARSET') ?:
    ($_ENV['DB_CHARSET'] ?? 'utf8mb4');


$dsn =
    "mysql:host={$host};dbname={$db};charset={$charset}";


$options = [

    PDO::ATTR_ERRMODE =>
        PDO::ERRMODE_EXCEPTION,

    PDO::ATTR_DEFAULT_FETCH_MODE =>
        PDO::FETCH_ASSOC,

    PDO::ATTR_EMULATE_PREPARES =>
        false
];


try {

    $pdo =
        new PDO(
            $dsn,
            $user,
            $pass,
            $options
        );

} catch (PDOException $e) {

    responder(
        [
            'success' => false,

            'error' =>
                'Erro de conexão com o banco de dados: ' .
                $e->getMessage()
        ],
        500
    );
}


/*
|--------------------------------------------------------------------------
| LER REQUEST
|--------------------------------------------------------------------------
*/

$rawInput =
    file_get_contents(
        'php://input'
    );


$data = [];


if (
    $rawInput !== false &&
    trim($rawInput) !== ''
) {

    $decoded =
        json_decode(
            $rawInput,
            true
        );

    if (
        json_last_error() === JSON_ERROR_NONE &&
        is_array($decoded)
    ) {

        $data =
            $decoded;
    }
}


/*
|--------------------------------------------------------------------------
| ACTION
|--------------------------------------------------------------------------
|
| A prioridade é:
|
| 1. ?action=delete
| 2. action enviado no JSON
| 3. read
|
|--------------------------------------------------------------------------
*/

$action =
    trim(
        $_GET['action']
        ?? $data['action']
        ?? 'read'
    );


$action =
    strtolower($action);


/*
|--------------------------------------------------------------------------
| SWITCH
|--------------------------------------------------------------------------
*/

switch ($action) {


    /*
    |--------------------------------------------------------------------------
    | CREATE / UPDATE
    |--------------------------------------------------------------------------
    */

    case 'create':
    case 'update':

        $id =
            $data['id']
            ?? ($_GET['id'] ?? null);


        /*
        |--------------------------------------------------------------------------
        | CONVERSATION ID
        |--------------------------------------------------------------------------
        |
        | Identificador único do atendimento no Chatwoot.
        |
        | Será utilizado para impedir que o mesmo atendimento
        | seja cadastrado mais de uma vez no KB.
        |
        |--------------------------------------------------------------------------
        */

        $conversation_id =
            $data['conversation_id']
            ?? null;


        if (
            $conversation_id !== null &&
            $conversation_id !== '' &&
            is_numeric($conversation_id)
        ) {

            $conversation_id =
                (int)$conversation_id;

        } else {

            $conversation_id =
                null;
        }


        $titulo =
            $data['titulo']
            ?? $data['aba_solucao']['titulo']
            ?? '';


        $solucao =
            $data['solucao']
            ?? $data['aba_solucao']['solucao']
            ?? '';


        $categoria =
            $data['categoria']
            ?? $data['aba_solucao']['categoria']
            ?? '';


        $tags =
            $data['tags']
            ?? $data['aba_solucao']['tags']
            ?? '';


        $descricao =
            $data['descricao']
            ?? $data['problema']
            ?? $data['aba_solucao']['problema']
            ?? '';


        $nota_final =
            (
                isset($data['nota_final']) &&
                $data['nota_final'] !== '' &&
                $data['nota_final'] !== null
            )
                ? (float)$data['nota_final']
                : null;


        $veredito =
            $data['veredito']
            ?? $data['aba_auditoria']['veredito']
            ?? null;


        $objetivo =
            $data['objetivo']
            ?? $data['aba_auditoria']['objetivo']
            ?? null;


        $oportunidade_ps =
            $data['oportunidade_ps']
            ?? $data['oportunidade']
            ?? $data['aba_auditoria']['oportunidade_ps']
            ?? null;


        $relatorio_markdown =
            $data['relatorio_markdown']
            ?? $data['aba_auditoria']['relatorio_markdown']
            ?? null;


        /*
        |--------------------------------------------------------------------------
        | NORMALIZAR TÍTULO E SOLUÇÃO
        |--------------------------------------------------------------------------
        */

        $titulo =
            trim((string)$titulo);

        $solucao =
            trim((string)$solucao);


        try {


            /*
            |--------------------------------------------------------------------------
            | CREATE
            |--------------------------------------------------------------------------
            */

            if ($action === 'create') {


                $sql = "

                    INSERT INTO erros

                    (
                        conversation_id,
                        titulo,
                        categoria,
                        tags,
                        descricao,
                        solucao,
                        nota_final,
                        veredito,
                        objetivo,
                        oportunidade_ps,
                        relatorio_markdown
                    )

                    VALUES

                    (
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?
                    )

                ";


                $stmt =
                    $pdo->prepare(
                        $sql
                    );


                $success =
                    $stmt->execute(
                        [

                            $conversation_id,

                            $titulo,

                            $categoria,

                            $tags,

                            $descricao,

                            $solucao,

                            $nota_final,

                            $veredito,

                            $objetivo,

                            $oportunidade_ps,

                            $relatorio_markdown

                        ]
                    );


                responder(
                    [

                        'success' =>
                            $success,

                        'id' =>
                            (int)$pdo->lastInsertId(),

                        'conversation_id' =>
                            $conversation_id,

                        'action' =>
                            'create'

                    ]
                );
            }


            /*
            |--------------------------------------------------------------------------
            | UPDATE
            |--------------------------------------------------------------------------
            */

            if ($action === 'update') {


                if (
                    !$id ||
                    !is_numeric($id) ||
                    (int)$id <= 0
                ) {

                    responder(
                        [

                            'success' =>
                                false,

                            'error' =>
                                'ID não informado para atualização.',

                            'action' =>
                                'update'

                        ],
                        400
                    );
                }


                $id =
                    (int)$id;


                $sql = "

                    UPDATE erros

                    SET

                        conversation_id = ?,

                        titulo = ?,

                        categoria = ?,

                        tags = ?,

                        descricao = ?,

                        solucao = ?,

                        nota_final = ?,

                        veredito = ?,

                        objetivo = ?,

                        oportunidade_ps = ?,

                        relatorio_markdown = ?

                    WHERE id = ?

                ";


                $stmt =
                    $pdo->prepare(
                        $sql
                    );


                $stmt->execute(
                    [

                        $conversation_id,

                        $titulo,

                        $categoria,

                        $tags,

                        $descricao,

                        $solucao,

                        $nota_final,

                        $veredito,

                        $objetivo,

                        $oportunidade_ps,

                        $relatorio_markdown,

                        $id

                    ]
                );


                responder(
                    [

                        'success' =>
                            true,

                        'id' =>
                            $id,

                        'conversation_id' =>
                            $conversation_id,

                        'action' =>
                            'update',

                        'affected_rows' =>
                            $stmt->rowCount()

                    ]
                );
            }


        } catch (PDOException $e) {

            responder(
                [

                    'success' =>
                        false,

                    'error' =>
                        'Erro MySQL: ' .
                        $e->getMessage(),

                    'action' =>
                        $action

                ],
                500
            );
        }

        break;


    /*
    |--------------------------------------------------------------------------
    | DELETE
    |--------------------------------------------------------------------------
    |
    | IMPORTANTE:
    | Este bloco é totalmente independente de create/update.
    | Portanto não verifica título nem solução.
    |--------------------------------------------------------------------------
    */

    case 'delete':


        /*
        |--------------------------------------------------------------------------
        | PEGAR ID
        |--------------------------------------------------------------------------
        */

        $id =
            $_GET['id']
            ?? ($data['id'] ?? null);


        /*
        |--------------------------------------------------------------------------
        | VALIDAR ID
        |--------------------------------------------------------------------------
        */

        if (
            $id === null ||
            $id === '' ||
            !is_numeric($id)
        ) {

            responder(
                [

                    'success' =>
                        false,

                    'error' =>
                        'ID é obrigatório para exclusão.',

                    'action' =>
                        'delete',

                    'received_id' =>
                        $id

                ],
                400
            );
        }


        $id =
            (int)$id;


        if ($id <= 0) {

            responder(
                [

                    'success' =>
                        false,

                    'error' =>
                        'ID inválido para exclusão.',

                    'action' =>
                        'delete',

                    'received_id' =>
                        $id

                ],
                400
            );
        }


        /*
        |--------------------------------------------------------------------------
        | EXECUTAR DELETE
        |--------------------------------------------------------------------------
        */

        try {

            $stmt =
                $pdo->prepare(
                    "DELETE FROM erros WHERE id = ?"
                );


            $stmt->execute(
                [$id]
            );


            $affectedRows =
                $stmt->rowCount();


            /*
            |--------------------------------------------------------------------------
            | REGISTRO ENCONTRADO
            |--------------------------------------------------------------------------
            */

            if ($affectedRows > 0) {

                responder(
                    [

                        'success' =>
                            true,

                        'message' =>
                            'Registro excluído com sucesso.',

                        'action' =>
                            'delete',

                        'id' =>
                            $id,

                        'affected_rows' =>
                            $affectedRows

                    ]
                );
            }


            /*
            |--------------------------------------------------------------------------
            | REGISTRO NÃO ENCONTRADO
            |--------------------------------------------------------------------------
            */

            responder(
                [

                    'success' =>
                        false,

                    'error' =>
                        'Nenhum registro encontrado com este ID.',

                    'action' =>
                        'delete',

                    'id' =>
                        $id

                ],
                404
            );


        } catch (PDOException $e) {

            responder(
                [

                    'success' =>
                        false,

                    'error' =>
                        'Erro MySQL ao excluir: ' .
                        $e->getMessage(),

                    'action' =>
                        'delete',

                    'id' =>
                        $id

                ],
                500
            );
        }

        break;


    /*
    |--------------------------------------------------------------------------
    | READ
    |--------------------------------------------------------------------------
    */

    case 'read':
    default:


        $search =
            trim(
                $_GET['search'] ?? ''
            );


        $page =
            max(
                1,

                (int)(
                    $_GET['page']
                    ?? 1
                )
            );


        $limit =
            max(
                1,

                min(
                    100,

                    (int)(
                        $_GET['limit']
                        ?? 10
                    )
                )
            );


        $offset =
            ($page - 1) *
            $limit;


        try {


            /*
            |--------------------------------------------------------------------------
            | COM PESQUISA
            |--------------------------------------------------------------------------
            */

            if ($search !== '') {


                $searchTerm =
                    "%{$search}%";


                $countSql = "

                    SELECT COUNT(*)

                    FROM erros

                    WHERE

                        titulo LIKE ?

                        OR descricao LIKE ?

                        OR solucao LIKE ?

                        OR categoria LIKE ?

                        OR tags LIKE ?

                ";


                $stmtCount =
                    $pdo->prepare(
                        $countSql
                    );


                $stmtCount->execute(
                    [

                        $searchTerm,

                        $searchTerm,

                        $searchTerm,

                        $searchTerm,

                        $searchTerm

                    ]
                );


                $totalRows =
                    (int)$stmtCount->fetchColumn();


                $dataSql = "

                    SELECT *

                    FROM erros

                    WHERE

                        titulo LIKE ?

                        OR descricao LIKE ?

                        OR solucao LIKE ?

                        OR categoria LIKE ?

                        OR tags LIKE ?

                    ORDER BY id DESC

                    LIMIT ?

                    OFFSET ?

                ";


                $stmtData =
                    $pdo->prepare(
                        $dataSql
                    );


                $stmtData->bindValue(
                    1,
                    $searchTerm,
                    PDO::PARAM_STR
                );


                $stmtData->bindValue(
                    2,
                    $searchTerm,
                    PDO::PARAM_STR
                );


                $stmtData->bindValue(
                    3,
                    $searchTerm,
                    PDO::PARAM_STR
                );


                $stmtData->bindValue(
                    4,
                    $searchTerm,
                    PDO::PARAM_STR
                );


                $stmtData->bindValue(
                    5,
                    $searchTerm,
                    PDO::PARAM_STR
                );


                $stmtData->bindValue(
                    6,
                    $limit,
                    PDO::PARAM_INT
                );


                $stmtData->bindValue(
                    7,
                    $offset,
                    PDO::PARAM_INT
                );


                $stmtData->execute();

            }


            /*
            |--------------------------------------------------------------------------
            | SEM PESQUISA
            |--------------------------------------------------------------------------
            */

            else {


                $totalRows =
                    (int)$pdo
                        ->query(
                            "SELECT COUNT(*) FROM erros"
                        )
                        ->fetchColumn();


                $stmtData =
                    $pdo->prepare(
                        "

                        SELECT *

                        FROM erros

                        ORDER BY id DESC

                        LIMIT ?

                        OFFSET ?

                        "
                    );


                $stmtData->bindValue(
                    1,
                    $limit,
                    PDO::PARAM_INT
                );


                $stmtData->bindValue(
                    2,
                    $offset,
                    PDO::PARAM_INT
                );


                $stmtData->execute();
            }


            /*
            |--------------------------------------------------------------------------
            | RESULTADOS
            |--------------------------------------------------------------------------
            */

            $records =
                $stmtData->fetchAll();


            $totalPages =
                $totalRows > 0

                    ? (int)ceil(
                        $totalRows / $limit
                    )

                    : 1;


            responder(
                [

                    'success' =>
                        true,

                    'data' =>
                        $records,

                    'total_pages' =>
                        $totalPages,

                    'current_page' =>
                        $page,

                    'total_records' =>
                        $totalRows,

                    'action' =>
                        'read'

                ]
            );


        } catch (PDOException $e) {

            responder(
                [

                    'success' =>
                        false,

                    'error' =>
                        'Erro MySQL ao carregar: ' .
                        $e->getMessage(),

                    'action' =>
                        'read'

                ],
                500
            );
        }

        break;
}