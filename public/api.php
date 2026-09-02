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


        /*
        |--------------------------------------------------------------------------
        | CAMPOS DA SOLUÇÃO
        |--------------------------------------------------------------------------
        */

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

        if (is_array($tags)) {
            $tags = implode(', ', $tags);
        }


        $descricao =
            $data['descricao']
            ?? $data['problema']
            ?? $data['aba_solucao']['problema']
            ?? '';


        /*
        |--------------------------------------------------------------------------
        | AUDITORIAS
        |--------------------------------------------------------------------------
        | A Tess pode retornar várias auditorias, uma para cada atendente.
        | O array completo é armazenado em JSON na coluna auditorias.
        | Os campos antigos continuam sendo preenchidos com a primeira
        | auditoria para compatibilidade com registros existentes.
        |--------------------------------------------------------------------------
        */

        $auditorias = [];

        if (isset($data['auditorias'])) {
            if (is_array($data['auditorias'])) {
                $auditorias = $data['auditorias'];
            } elseif (is_string($data['auditorias']) && trim($data['auditorias']) !== '') {
                $decodedAuditorias = json_decode($data['auditorias'], true);
                if (json_last_error() === JSON_ERROR_NONE && is_array($decodedAuditorias)) {
                    $auditorias = $decodedAuditorias;
                }
            }
        }

        // Compatibilidade com o formato antigo de uma única auditoria.
        if (empty($auditorias)) {
            $legacyNota = (isset($data['nota_final']) && $data['nota_final'] !== '' && $data['nota_final'] !== null)
                ? (float)$data['nota_final']
                : null;

            $legacyVeredito = $data['veredito'] ?? $data['aba_auditoria']['veredito'] ?? '';
            $legacyObjetivo = $data['objetivo'] ?? $data['aba_auditoria']['objetivo'] ?? '';
            $legacyOportunidade = $data['oportunidade_ps'] ?? $data['oportunidade'] ?? $data['aba_auditoria']['oportunidade_ps'] ?? '';
            $legacyOferta = $data['oferta_ps'] ?? $data['aba_auditoria']['oferta_ps'] ?? '';
            $legacyRelatorio = $data['relatorio_markdown'] ?? $data['aba_auditoria']['relatorio_markdown'] ?? '';

            if (
                $legacyNota !== null ||
                trim((string)$legacyVeredito) !== '' ||
                trim((string)$legacyObjetivo) !== '' ||
                trim((string)$legacyOportunidade) !== '' ||
                trim((string)$legacyOferta) !== '' ||
                trim((string)$legacyRelatorio) !== ''
            ) {
                $auditorias[] = [
                    'atendente' => $data['atendente'] ?? 'Não informado no atendimento',
                    'nota_final' => $legacyNota,
                    'veredito' => (string)$legacyVeredito,
                    'objetivo' => (string)$legacyObjetivo,
                    'oportunidade_ps' => (string)$legacyOportunidade,
                    'oferta_ps' => (string)$legacyOferta,
                    'relatorio_markdown' => (string)$legacyRelatorio
                ];
            }
        }

        /*
         * Normalização das auditorias.
         *
         * IMPORTANTE:
         * A matriz "avaliacoes" faz parte da auditoria e deve ser
         * preservada integralmente no JSON gravado na coluna auditorias.
         *
         * Cada avaliação possui:
         * - item
         * - avaliacao
         * - responsabilidade
         * - observacao
         */

        $valoresAvaliacaoPermitidos = [
            'CORRETO',
            'PARCIALMENTE_CORRETO',
            'INCORRETO',
            'NAO_APLICAVEL',
            'SEM_EVIDENCIA'
        ];

        $valoresResponsabilidadePermitidos = [
            'ATENDENTE',
            'INFRAESTRUTURA',
            'CLIENTE',
            'OUTRO_ATENDENTE',
            'TERCEIRO',
            'PS',
            'APLICACAO',
            'PROCESSO',
            'NAO_DETERMINADO'
        ];

        $normalizarAvaliacoes = function ($avaliacoes) use (
            $valoresAvaliacaoPermitidos,
            $valoresResponsabilidadePermitidos
        ) {
            if (!is_array($avaliacoes)) {
                return [];
            }

            $resultado = [];

            foreach ($avaliacoes as $avaliacao) {
                if (!is_array($avaliacao)) {
                    continue;
                }

                $item = trim((string)($avaliacao['item'] ?? ''));
                $observacao = trim((string)($avaliacao['observacao'] ?? ''));

                $status = strtoupper(
                    trim((string)($avaliacao['avaliacao'] ?? 'SEM_EVIDENCIA'))
                );

                $responsabilidade = strtoupper(
                    trim((string)($avaliacao['responsabilidade'] ?? 'NAO_DETERMINADO'))
                );

                if (!in_array($status, $valoresAvaliacaoPermitidos, true)) {
                    $status = 'SEM_EVIDENCIA';
                }

                if (!in_array($responsabilidade, $valoresResponsabilidadePermitidos, true)) {
                    $responsabilidade = 'NAO_DETERMINADO';
                }

                $resultado[] = [
                    'item' => $item,
                    'avaliacao' => $status,
                    'responsabilidade' => $responsabilidade,
                    'observacao' => $observacao
                ];
            }

            return $resultado;
        };

        $auditoriasNormalizadas = [];

        foreach ($auditorias as $auditoria) {
            if (!is_array($auditoria)) {
                continue;
            }

            $notaAuditoria = (
                isset($auditoria['nota_final']) &&
                $auditoria['nota_final'] !== '' &&
                $auditoria['nota_final'] !== null
            )
                ? (float)$auditoria['nota_final']
                : null;

            /*
             * Preserva a matriz de avaliações enviada pela Tess.
             * Se não existir, permanece como array vazio para manter
             * compatibilidade com registros antigos.
             */
            $avaliacoesAuditoria = $normalizarAvaliacoes(
                $auditoria['avaliacoes'] ?? []
            );

            $auditoriasNormalizadas[] = [
                'atendente' => trim(
                    (string)($auditoria['atendente'] ?? 'Não informado no atendimento')
                ),
                'nota_final' => $notaAuditoria,
                'veredito' => trim(
                    (string)($auditoria['veredito'] ?? '')
                ),
                'objetivo' => trim(
                    (string)($auditoria['objetivo'] ?? '')
                ),
                'oportunidade_ps' => trim(
                    (string)($auditoria['oportunidade_ps'] ?? '')
                ),
                'oferta_ps' => trim(
                    (string)($auditoria['oferta_ps'] ?? '')
                ),
                'avaliacoes' => $avaliacoesAuditoria,
                'relatorio_markdown' => trim(
                    (string)($auditoria['relatorio_markdown'] ?? '')
                )
            ];
        }

        $auditoriasJson = null;

        if (!empty($auditoriasNormalizadas)) {
            $auditoriasJson = json_encode(
                $auditoriasNormalizadas,
                JSON_UNESCAPED_UNICODE |
                JSON_UNESCAPED_SLASHES |
                JSON_THROW_ON_ERROR
            );
        }

        $primeiraAuditoria = $auditoriasNormalizadas[0] ?? [];

        $nota_final = $primeiraAuditoria['nota_final'] ?? null;
        $veredito = $primeiraAuditoria['veredito'] ?? null;
        $objetivo = $primeiraAuditoria['objetivo'] ?? null;
        $oportunidade_ps = $primeiraAuditoria['oportunidade_ps'] ?? null;
        $oferta_ps = $primeiraAuditoria['oferta_ps'] ?? null;
        $relatorio_markdown = $primeiraAuditoria['relatorio_markdown'] ?? null;


        /*
        |--------------------------------------------------------------------------
        | NORMALIZAR TÍTULO E SOLUÇÃO
        |--------------------------------------------------------------------------
        */

        $titulo =
            trim((string)$titulo);


        $solucao =
            trim((string)$solucao);


        /*
        |--------------------------------------------------------------------------
        | CREATE / UPDATE
        |--------------------------------------------------------------------------
        */

        try {


            /*
            |--------------------------------------------------------------------------
            | CREATE
            |--------------------------------------------------------------------------
            */

            if ($action === 'create') {


                /*
                |--------------------------------------------------------------------------
                | VALIDAR CAMPOS OBRIGATÓRIOS
                |--------------------------------------------------------------------------
                */

                if ($titulo === '') {

                    responder(
                        [
                            'success' =>
                                false,

                            'error' =>
                                'O campo titulo é obrigatório.',

                            'action' =>
                                'create'
                        ],
                        400
                    );
                }


                if ($solucao === '') {

                    responder(
                        [
                            'success' =>
                                false,

                            'error' =>
                                'O campo solucao é obrigatório.',

                            'action' =>
                                'create'
                        ],
                        400
                    );
                }


                /*
                |--------------------------------------------------------------------------
                | VERIFICAR DUPLICIDADE
                |--------------------------------------------------------------------------
                |
                | Se já existir um registro com o mesmo conversation_id,
                | não criaremos outro.
                |
                |--------------------------------------------------------------------------
                */

                if ($conversation_id !== null) {

                    $checkSql = "

                        SELECT id

                        FROM erros

                        WHERE conversation_id = ?

                        LIMIT 1

                    ";


                    $checkStmt =
                        $pdo->prepare(
                            $checkSql
                        );


                    $checkStmt->execute(
                        [
                            $conversation_id
                        ]
                    );


                    $existingId =
                        $checkStmt->fetchColumn();


                    if ($existingId !== false) {

                        responder(
                            [
                                'success' =>
                                    true,

                                'id' =>
                                    (int)$existingId,

                                'conversation_id' =>
                                    $conversation_id,

                                'action' =>
                                    'duplicate',

                                'created' =>
                                    false
                            ],
                            200
                        );
                    }
                }


                /*
                |--------------------------------------------------------------------------
                | INSERT
                |--------------------------------------------------------------------------
                */

                $sql = "

                    INSERT INTO erros
                    (
                        conversation_id,
                        titulo,
                        categoria,
                        tags,
                        descricao,
                        solucao,
                        auditorias,
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

                            $auditoriasJson,

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
                            'create',

                        'created' =>
                            true

                    ]
                );
            }


            /*
            |--------------------------------------------------------------------------
            | UPDATE
            |--------------------------------------------------------------------------
            */

            if ($action === 'update') {


                /*
                |--------------------------------------------------------------------------
                | VALIDAR ID
                |--------------------------------------------------------------------------
                */

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


                /*
                |--------------------------------------------------------------------------
                | BUSCAR REGISTRO ATUAL
                |--------------------------------------------------------------------------
                |
                | Precisamos recuperar o conversation_id existente
                | caso ele não tenha sido enviado pelo frontend.
                |
                |--------------------------------------------------------------------------
                */

                $currentSql = "

                    SELECT conversation_id

                    FROM erros

                    WHERE id = ?

                    LIMIT 1

                ";


                $currentStmt =
                    $pdo->prepare(
                        $currentSql
                    );


                $currentStmt->execute(
                    [
                        $id
                    ]
                );


                $currentConversationId =
                    $currentStmt->fetchColumn();


                /*
                |--------------------------------------------------------------------------
                | REGISTRO NÃO EXISTE
                |--------------------------------------------------------------------------
                */

                if ($currentConversationId === false) {

                    responder(
                        [
                            'success' =>
                                false,

                            'error' =>
                                'Registro não encontrado.',

                            'action' =>
                                'update',

                            'id' =>
                                $id
                        ],
                        404
                    );
                }


                /*
                |--------------------------------------------------------------------------
                | PRESERVAR CONVERSATION_ID
                |--------------------------------------------------------------------------
                |
                | Se conversation_id não foi enviado no request,
                | preservamos o valor já existente.
                |
                |--------------------------------------------------------------------------
                */

                if (
                    !array_key_exists(
                        'conversation_id',
                        $data
                    )
                ) {

                    if (
                        $currentConversationId !== null &&
                        $currentConversationId !== ''
                    ) {

                        $conversation_id =
                            (int)$currentConversationId;

                    } else {

                        $conversation_id =
                            null;
                    }
                }


                /*
                |--------------------------------------------------------------------------
                | VALIDAR CAMPOS
                |--------------------------------------------------------------------------
                */

                if ($titulo === '') {

                    responder(
                        [
                            'success' =>
                                false,

                            'error' =>
                                'O campo titulo é obrigatório.',

                            'action' =>
                                'update'
                        ],
                        400
                    );
                }


                if ($solucao === '') {

                    responder(
                        [
                            'success' =>
                                false,

                            'error' =>
                                'O campo solucao é obrigatório.',

                            'action' =>
                                'update'
                        ],
                        400
                    );
                }


                /*
                |--------------------------------------------------------------------------
                | VERIFICAR CONVERSATION_ID DUPLICADO
                |--------------------------------------------------------------------------
                |
                | Permite o próprio conversation_id do registro,
                | mas não permite que ele pertença a outro registro.
                |
                |--------------------------------------------------------------------------
                */

                if ($conversation_id !== null) {

                    $checkSql = "

                        SELECT id

                        FROM erros

                        WHERE conversation_id = ?

                        AND id <> ?

                        LIMIT 1

                    ";


                    $checkStmt =
                        $pdo->prepare(
                            $checkSql
                        );


                    $checkStmt->execute(
                        [
                            $conversation_id,
                            $id
                        ]
                    );


                    $existingId =
                        $checkStmt->fetchColumn();


                    if ($existingId !== false) {

                        responder(
                            [

                                'success' =>
                                    false,

                                'error' =>
                                    'Este conversation_id já está associado a outro registro.',

                                'conversation_id' =>
                                    $conversation_id,

                                'existing_id' =>
                                    (int)$existingId,

                                'action' =>
                                    'update'

                            ],
                            409
                        );
                    }
                }


                /*
                |--------------------------------------------------------------------------
                | UPDATE
                |--------------------------------------------------------------------------
                */

                $sql = "

                    UPDATE erros

                    SET

                        conversation_id = ?,

                        titulo = ?,

                        categoria = ?,

                        tags = ?,

                        descricao = ?,

                        solucao = ?,

                        auditorias = ?,

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

                        $auditoriasJson,

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


            /*
            |--------------------------------------------------------------------------
            | TRATAMENTO DO MYSQL 1062
            |--------------------------------------------------------------------------
            |
            | A UNIQUE KEY protege contra duas requisições simultâneas.
            |
            | Caso isso aconteça, retornamos duplicate em vez de erro 500.
            |
            |--------------------------------------------------------------------------
            */

            $mysqlCode =
                $e->errorInfo[1] ?? null;


            if (
                $mysqlCode == 1062 &&
                $conversation_id !== null
            ) {

                $checkSql = "

                    SELECT id

                    FROM erros

                    WHERE conversation_id = ?

                    LIMIT 1

                ";


                $checkStmt =
                    $pdo->prepare(
                        $checkSql
                    );


                $checkStmt->execute(
                    [
                        $conversation_id
                    ]
                );


                $existingId =
                    $checkStmt->fetchColumn();


                if ($existingId !== false) {

                    responder(
                        [

                            'success' =>
                                true,

                            'id' =>
                                (int)$existingId,

                            'conversation_id' =>
                                $conversation_id,

                            'action' =>
                                'duplicate',

                            'created' =>
                                false

                        ],
                        200
                    );
                }
            }


            /*
            |--------------------------------------------------------------------------
            | OUTROS ERROS
            |--------------------------------------------------------------------------
            */

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

                        OR auditorias LIKE ?

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

                        OR auditorias LIKE ?

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
                    $searchTerm,
                    PDO::PARAM_STR
                );


                $stmtData->bindValue(
                    7,
                    $limit,
                    PDO::PARAM_INT
                );


                $stmtData->bindValue(
                    8,
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

            foreach ($records as &$record) {

                $auditoriasRecord = [];

                if (
                    isset($record['auditorias']) &&
                    $record['auditorias'] !== null &&
                    trim((string)$record['auditorias']) !== ''
                ) {
                    $decoded = json_decode(
                        $record['auditorias'],
                        true
                    );

                    if (
                        json_last_error() === JSON_ERROR_NONE &&
                        is_array($decoded)
                    ) {
                        $auditoriasRecord = $decoded;
                    }
                }

                // Compatibilidade com registros antigos.
                if (empty($auditoriasRecord)) {
                    $temAuditoriaLegada =
                        $record['nota_final'] !== null ||
                        trim((string)($record['veredito'] ?? '')) !== '' ||
                        trim((string)($record['objetivo'] ?? '')) !== '' ||
                        trim((string)($record['oportunidade_ps'] ?? '')) !== '' ||
                        trim((string)($record['relatorio_markdown'] ?? '')) !== '';

                    if ($temAuditoriaLegada) {
                        $auditoriasRecord[] = [
                            'atendente' =>
                                $record['atendente'] ??
                                'Não informado no atendimento',
                            'nota_final' =>
                                $record['nota_final'] !== null
                                    ? (float)$record['nota_final']
                                    : null,
                            'veredito' =>
                                $record['veredito'] ?? '',
                            'objetivo' =>
                                $record['objetivo'] ?? '',
                            'oportunidade_ps' =>
                                $record['oportunidade_ps'] ?? '',
                            'oferta_ps' => '',
                            'avaliacoes' => [],
                            'relatorio_markdown' =>
                                $record['relatorio_markdown'] ?? ''
                        ];
                    }
                }

                $record['auditorias'] = $auditoriasRecord;
            }
            unset($record);


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