<?php

header('Content-Type: application/json; charset=utf-8');


/*
|--------------------------------------------------------------------------
| RESPOSTA JSON
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
| NORMALIZAR VEREDITO
|--------------------------------------------------------------------------
*/

function normalizarVereditoBanco($valor, $nota = null): string
{
    $texto = trim((string)$valor);

    if ($texto === '') {

        if ($nota !== null && is_numeric($nota)) {

            $nota = (float)$nota;

            if ($nota >= 4.5) {
                return 'Excelente';
            }

            if ($nota >= 4.0) {
                return 'Muito bom';
            }

            if ($nota >= 3.0) {
                return 'Bom';
            }

            if ($nota >= 2.0) {
                return 'Regular';
            }

            return 'Insatisfatório';
        }

        return '';
    }

    $normalizado = mb_strtolower(
        $texto,
        'UTF-8'
    );

    if (str_contains($normalizado, 'excelente')) {
        return 'Excelente';
    }

    if (
        str_contains($normalizado, 'muito bom') ||
        str_contains($normalizado, 'muito boa')
    ) {
        return 'Muito bom';
    }

    if (str_contains($normalizado, 'insatisf')) {
        return 'Insatisfatório';
    }

    if (str_contains($normalizado, 'regular')) {
        return 'Regular';
    }

    if (preg_match('/\b(bom|boa)\b/u', $normalizado)) {
        return 'Bom';
    }

    if (str_contains($normalizado, 'ruim')) {
        return 'Ruim';
    }

    if ($nota !== null && is_numeric($nota)) {

        $nota = (float)$nota;

        if ($nota >= 4.5) {
            return 'Excelente';
        }

        if ($nota >= 4.0) {
            return 'Muito bom';
        }

        if ($nota >= 3.0) {
            return 'Bom';
        }

        if ($nota >= 2.0) {
            return 'Regular';
        }

        return 'Insatisfatório';
    }

    return mb_substr(
        $texto,
        0,
        100,
        'UTF-8'
    );
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

        [$key, $value] = explode(
            '=',
            $line,
            2
        );

        $key = trim($key);

        $value = trim(
            $value,
            "\"'\t "
        );

        if ($key !== '') {

            putenv(
                "{$key}={$value}"
            );

            $_ENV[$key] = $value;
            $_SERVER[$key] = $value;
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

    $pdo = new PDO(
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

        $data = $decoded;
    }
}


/*
|--------------------------------------------------------------------------
| ACTION
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

            $conversation_id = null;
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
        */

        $auditorias = [];


        if (isset($data['auditorias'])) {

            if (is_array($data['auditorias'])) {

                $auditorias =
                    $data['auditorias'];

            } elseif (
                is_string($data['auditorias']) &&
                trim($data['auditorias']) !== ''
            ) {

                $decodedAuditorias =
                    json_decode(
                        $data['auditorias'],
                        true
                    );

                if (
                    json_last_error() === JSON_ERROR_NONE &&
                    is_array($decodedAuditorias)
                ) {

                    $auditorias =
                        $decodedAuditorias;
                }
            }
        }


        /*
        |--------------------------------------------------------------------------
        | COMPATIBILIDADE COM REGISTROS ANTIGOS
        |--------------------------------------------------------------------------
        */

        if (empty($auditorias)) {

            $legacyNota =
                (
                    isset($data['nota_final']) &&
                    $data['nota_final'] !== '' &&
                    $data['nota_final'] !== null
                )
                    ? (float)$data['nota_final']
                    : null;

            $legacyVeredito =
                $data['veredito']
                ?? $data['aba_auditoria']['veredito']
                ?? '';

            $legacyObjetivo =
                $data['objetivo']
                ?? $data['aba_auditoria']['objetivo']
                ?? '';

            $legacyOportunidade =
                $data['oportunidade_ps']
                ?? $data['oportunidade']
                ?? $data['aba_auditoria']['oportunidade_ps']
                ?? '';

            $legacyOferta =
                $data['oferta_ps']
                ?? $data['aba_auditoria']['oferta_ps']
                ?? '';

            $legacyRelatorio =
                $data['relatorio_markdown']
                ?? $data['aba_auditoria']['relatorio_markdown']
                ?? '';

            if (
                $legacyNota !== null ||
                trim((string)$legacyVeredito) !== '' ||
                trim((string)$legacyObjetivo) !== '' ||
                trim((string)$legacyOportunidade) !== '' ||
                trim((string)$legacyOferta) !== '' ||
                trim((string)$legacyRelatorio) !== ''
            ) {

                $auditorias[] = [

                    'atendente' =>
                        $data['atendente']
                        ?? 'Não informado no atendimento',

                    'nota_final' =>
                        $legacyNota,

                    'veredito' =>
                        (string)$legacyVeredito,

                    'objetivo' =>
                        (string)$legacyObjetivo,

                    'oportunidade_ps' =>
                        (string)$legacyOportunidade,

                    'oferta_ps' =>
                        (string)$legacyOferta,

                    'relatorio_markdown' =>
                        (string)$legacyRelatorio,

                    'avaliacoes' =>
                        $data['avaliacoes']
                        ?? []
                ];
            }
        }


        /*
        |--------------------------------------------------------------------------
        | RECUPERAR CONVERSATION ID PELO RELATÓRIO
        |--------------------------------------------------------------------------
        */

        if ($conversation_id === null) {

            $textosId = [];

            if (isset($data['relatorio_markdown'])) {

                $textosId[] =
                    (string)$data['relatorio_markdown'];
            }

            if (
                isset(
                    $data['aba_auditoria']['relatorio_markdown']
                )
            ) {

                $textosId[] =
                    (string)$data['aba_auditoria']['relatorio_markdown'];
            }

            foreach ($auditorias as $auditoria) {

                if (
                    is_array($auditoria) &&
                    isset($auditoria['relatorio_markdown'])
                ) {

                    $textosId[] =
                        (string)$auditoria['relatorio_markdown'];
                }
            }

            foreach ($textosId as $textoId) {

                if (
                    preg_match(
                        '/(?:\*{0,2}ID da conversa\*{0,2}\s*[:|]\s*|\|\s*\*{0,2}ID da conversa\*{0,2}\s*\|\s*)([0-9]+)/i',
                        $textoId,
                        $match
                    )
                ) {

                    $conversation_id =
                        (int)$match[1];

                    break;
                }
            }
        }


        /*
        |--------------------------------------------------------------------------
        | NORMALIZAR AUDITORIAS
        |--------------------------------------------------------------------------
        */

        $auditoriasNormalizadas = [];


        foreach ($auditorias as $auditoria) {

            if (!is_array($auditoria)) {
                continue;
            }

            $notaAuditoria =
                (
                    isset($auditoria['nota_final']) &&
                    $auditoria['nota_final'] !== '' &&
                    $auditoria['nota_final'] !== null
                )
                    ? (float)$auditoria['nota_final']
                    : null;


            $avaliacoes =
                $auditoria['avaliacoes']
                ?? [];


            if (!is_array($avaliacoes)) {
                $avaliacoes = [];
            }


            $auditoriasNormalizadas[] = [

                'atendente' =>
                    trim(
                        (string)(
                            $auditoria['atendente']
                            ?? 'Não informado no atendimento'
                        )
                    ),

                'nota_final' =>
                    $notaAuditoria,

                'veredito' =>
                    normalizarVereditoBanco(
                        $auditoria['veredito']
                        ?? '',
                        $notaAuditoria
                    ),

                'objetivo' =>
                    trim(
                        (string)(
                            $auditoria['objetivo']
                            ?? ''
                        )
                    ),

                'oportunidade_ps' =>
                    trim(
                        (string)(
                            $auditoria['oportunidade_ps']
                            ?? ''
                        )
                    ),

                'oferta_ps' =>
                    trim(
                        (string)(
                            $auditoria['oferta_ps']
                            ?? ''
                        )
                    ),

                'avaliacoes' =>
                    $avaliacoes,

                'relatorio_markdown' =>
                    trim(
                        (string)(
                            $auditoria['relatorio_markdown']
                            ?? ''
                        )
                    )
            ];
        }


        $auditoriasJson =
            !empty($auditoriasNormalizadas)

                ? json_encode(
                    $auditoriasNormalizadas,
                    JSON_UNESCAPED_UNICODE |
                    JSON_UNESCAPED_SLASHES
                )

                : null;


        /*
        |--------------------------------------------------------------------------
        | PRIMEIRA AUDITORIA
        |--------------------------------------------------------------------------
        |
        | Mantém os campos antigos da tabela funcionando.
        |
        */

        $primeiraAuditoria =
            $auditoriasNormalizadas[0]
            ?? [];


        $nota_final =
            $primeiraAuditoria['nota_final']
            ?? null;

        $veredito =
            $primeiraAuditoria['veredito']
            ?? null;

        $objetivo =
            $primeiraAuditoria['objetivo']
            ?? null;

        $oportunidade_ps =
            $primeiraAuditoria['oportunidade_ps']
            ?? null;

        $oferta_ps =
            $primeiraAuditoria['oferta_ps']
            ?? null;

        $relatorio_markdown =
            $primeiraAuditoria['relatorio_markdown']
            ?? null;


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

                if ($titulo === '') {

                    responder(
                        [
                            'success' => false,
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
                            'success' => false,
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
                | DUPLICIDADE
                |--------------------------------------------------------------------------
                */

                if ($conversation_id !== null) {

                    $checkStmt =
                        $pdo->prepare(
                            "
                            SELECT id
                            FROM erros
                            WHERE conversation_id = ?
                            LIMIT 1
                            "
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
                            ]
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
                        oferta_ps,
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
                        ?,
                        ?
                    )
                ";


                $stmt =
                    $pdo->prepare($sql);


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
                            $oferta_ps,
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
                */

                $currentStmt =
                    $pdo->prepare(
                        "
                        SELECT conversation_id
                        FROM erros
                        WHERE id = ?
                        LIMIT 1
                        "
                    );


                $currentStmt->execute(
                    [
                        $id
                    ]
                );


                $currentConversationId =
                    $currentStmt->fetchColumn();


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
                | PRESERVAR CONVERSATION ID
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
                | VERIFICAR DUPLICIDADE
                |--------------------------------------------------------------------------
                */

                if ($conversation_id !== null) {

                    $checkStmt =
                        $pdo->prepare(
                            "
                            SELECT id
                            FROM erros
                            WHERE conversation_id = ?
                              AND id <> ?
                            LIMIT 1
                            "
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
                        oferta_ps = ?,
                        relatorio_markdown = ?
                    WHERE id = ?
                ";


                $stmt =
                    $pdo->prepare($sql);


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
                        $oferta_ps,
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
            | MYSQL 1062
            |--------------------------------------------------------------------------
            */

            $mysqlCode =
                $e->errorInfo[1]
                ?? null;


            if (
                $mysqlCode == 1062 &&
                $conversation_id !== null
            ) {

                $checkStmt =
                    $pdo->prepare(
                        "
                        SELECT id
                        FROM erros
                        WHERE conversation_id = ?
                        LIMIT 1
                        "
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
                        ]
                    );
                }
            }


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
    | AUDITORIAS
    |--------------------------------------------------------------------------
    |
    | Endpoint específico para o futuro workflow de relatórios.
    |
    | Exemplos:
    |
    | ?action=auditorias
    |
    | ?action=auditorias&data_inicio=2026-11-01&data_fim=2026-11-05
    |
    | ?action=auditorias&data_inicio=2026-11-01&data_fim=2026-11-05&atendente=Leonardo%20Pantano
    |
    |--------------------------------------------------------------------------
    */

    case 'auditorias':

        $dataInicio =
            trim(
                $_GET['data_inicio']
                ?? $data['data_inicio']
                ?? ''
            );


        $dataFim =
            trim(
                $_GET['data_fim']
                ?? $data['data_fim']
                ?? ''
            );


        $filtroAtendente =
            trim(
                $_GET['atendente']
                ?? $data['atendente']
                ?? ''
            );


        /*
        |--------------------------------------------------------------------------
        | VALIDAR DATAS
        |--------------------------------------------------------------------------
        */

        $inicioDate = null;
        $fimDate = null;


        if ($dataInicio !== '') {

            $inicioDate =
                DateTime::createFromFormat(
                    'Y-m-d',
                    $dataInicio
                );

            if (
                !$inicioDate ||
                $inicioDate->format('Y-m-d') !== $dataInicio
            ) {

                responder(
                    [
                        'success' =>
                            false,

                        'error' =>
                            'data_inicio deve estar no formato YYYY-MM-DD.',

                        'action' =>
                            'auditorias'
                    ],
                    400
                );
            }
        }


        if ($dataFim !== '') {

            $fimDate =
                DateTime::createFromFormat(
                    'Y-m-d',
                    $dataFim
                );

            if (
                !$fimDate ||
                $fimDate->format('Y-m-d') !== $dataFim
            ) {

                responder(
                    [
                        'success' =>
                            false,

                        'error' =>
                            'data_fim deve estar no formato YYYY-MM-DD.',

                        'action' =>
                            'auditorias'
                    ],
                    400
                );
            }
        }


        if (
            $inicioDate &&
            $fimDate &&
            $inicioDate > $fimDate
        ) {

            responder(
                [
                    'success' =>
                        false,

                    'error' =>
                        'data_inicio não pode ser posterior a data_fim.',

                    'action' =>
                        'auditorias'
                ],
                400
            );
        }


        try {

            /*
            |--------------------------------------------------------------------------
            | CONSULTA DOS REGISTROS
            |--------------------------------------------------------------------------
            */

            $sql = "
                SELECT
                    id,
                    conversation_id,
                    titulo,
                    categoria,
                    criado_em,
                    atualizado_em,
                    auditorias
                FROM erros
                WHERE 1 = 1
            ";


            $params = [];


            /*
            |--------------------------------------------------------------------------
            | FILTRO INICIAL
            |--------------------------------------------------------------------------
            */

            if ($dataInicio !== '') {

                $sql .= "
                    AND criado_em >= ?
                ";

                $params[] =
                    $dataInicio . ' 00:00:00';
            }


            /*
            |--------------------------------------------------------------------------
            | FILTRO FINAL
            |--------------------------------------------------------------------------
            |
            | Usamos < dia seguinte para incluir todo o dia final.
            |
            */

            if ($dataFim !== '') {

                $proximoDia =
                    clone $fimDate;

                $proximoDia->modify('+1 day');


                $sql .= "
                    AND criado_em < ?
                ";

                $params[] =
                    $proximoDia->format(
                        'Y-m-d'
                    ) . ' 00:00:00';
            }


            $sql .= "
                ORDER BY criado_em DESC, id DESC
            ";


            $stmt =
                $pdo->prepare($sql);


            $stmt->execute($params);


            $registros =
                $stmt->fetchAll();


            /*
            |--------------------------------------------------------------------------
            | TRANSFORMAR REGISTROS EM AUDITORIAS INDIVIDUAIS
            |--------------------------------------------------------------------------
            */

            $auditoriasResultado = [];


            foreach ($registros as $registro) {

                $auditoriasRegistro = [];


                /*
                |--------------------------------------------------------------------------
                | DECODIFICAR JSON
                |--------------------------------------------------------------------------
                */

                if (
                    isset($registro['auditorias']) &&
                    $registro['auditorias'] !== null &&
                    trim(
                        (string)$registro['auditorias']
                    ) !== ''
                ) {

                    $decoded =
                        json_decode(
                            $registro['auditorias'],
                            true
                        );


                    if (
                        json_last_error() === JSON_ERROR_NONE &&
                        is_array($decoded)
                    ) {

                        $auditoriasRegistro =
                            $decoded;
                    }
                }


                /*
                |--------------------------------------------------------------------------
                | COMPATIBILIDADE COM REGISTRO ANTIGO
                |--------------------------------------------------------------------------
                */

                if (empty($auditoriasRegistro)) {

                    $registroAntigoTemDados =
                        false;


                    $camposLegados = [
                        'nota_final',
                        'veredito',
                        'objetivo',
                        'oportunidade_ps',
                        'oferta_ps',
                        'relatorio_markdown'
                    ];


                    foreach ($camposLegados as $campo) {

                        if (
                            isset($registro[$campo]) &&
                            $registro[$campo] !== null &&
                            trim(
                                (string)$registro[$campo]
                            ) !== ''
                        ) {

                            $registroAntigoTemDados =
                                true;

                            break;
                        }
                    }


                    if ($registroAntigoTemDados) {

                        $auditoriasRegistro[] = [

                            'atendente' =>
                                'Não informado no atendimento',

                            'nota_final' =>
                                $registro['nota_final'] !== null
                                    ? (float)$registro['nota_final']
                                    : null,

                            'veredito' =>
                                $registro['veredito'] ?? '',

                            'objetivo' =>
                                $registro['objetivo'] ?? '',

                            'oportunidade_ps' =>
                                $registro['oportunidade_ps'] ?? '',

                            'oferta_ps' =>
                                $registro['oferta_ps'] ?? '',

                            'avaliacoes' =>
                                [],

                            'relatorio_markdown' =>
                                $registro['relatorio_markdown'] ?? ''
                        ];
                    }
                }


                /*
                |--------------------------------------------------------------------------
                | CADA AUDITORIA VIRA UM REGISTRO
                |--------------------------------------------------------------------------
                */

                foreach (
                    $auditoriasRegistro
                    as $auditoria
                ) {

                    if (
                        !is_array($auditoria)
                    ) {
                        continue;
                    }


                    $atendente =
                        trim(
                            (string)(
                                $auditoria['atendente']
                                ?? 'Não informado no atendimento'
                            )
                        );


                    /*
                    |--------------------------------------------------------------------------
                    | FILTRO POR ATENDENTE
                    |--------------------------------------------------------------------------
                    */

                    if (
                        $filtroAtendente !== '' &&
                        mb_strtolower(
                            $atendente,
                            'UTF-8'
                        ) !== mb_strtolower(
                            $filtroAtendente,
                            'UTF-8'
                        )
                    ) {

                        continue;
                    }


                    $nota =
                        (
                            isset(
                                $auditoria['nota_final']
                            ) &&
                            $auditoria['nota_final'] !== '' &&
                            $auditoria['nota_final'] !== null
                        )
                            ? (float)$auditoria['nota_final']
                            : null;


                    $avaliacoes =
                        $auditoria['avaliacoes']
                        ?? [];


                    if (!is_array($avaliacoes)) {
                        $avaliacoes = [];
                    }


                    /*
                    |--------------------------------------------------------------------------
                    | NORMALIZAÇÃO DO REGISTRO
                    |--------------------------------------------------------------------------
                    */

                    $auditoriasResultado[] = [

                        'id' =>
                            (int)$registro['id'],

                        'conversation_id' =>
                            $registro['conversation_id'] !== null
                                ? (int)$registro['conversation_id']
                                : null,

                        'criado_em' =>
                            $registro['criado_em'],

                        'atualizado_em' =>
                            $registro['atualizado_em'],

                        'titulo' =>
                            $registro['titulo'],

                        'categoria' =>
                            $registro['categoria'],

                        'atendente' =>
                            $atendente,

                        'nota_final' =>
                            $nota,

                        'veredito' =>
                            normalizarVereditoBanco(
                                $auditoria['veredito']
                                ?? '',
                                $nota
                            ),

                        'objetivo' =>
                            trim(
                                (string)(
                                    $auditoria['objetivo']
                                    ?? ''
                                )
                            ),

                        'oportunidade_ps' =>
                            trim(
                                (string)(
                                    $auditoria['oportunidade_ps']
                                    ?? ''
                                )
                            ),

                        'oferta_ps' =>
                            trim(
                                (string)(
                                    $auditoria['oferta_ps']
                                    ?? ''
                                )
                            ),

                        'avaliacoes' =>
                            $avaliacoes,

                        'relatorio_markdown' =>
                            trim(
                                (string)(
                                    $auditoria['relatorio_markdown']
                                    ?? ''
                                )
                            )
                    ];
                }
            }


            /*
            |--------------------------------------------------------------------------
            | RESPOSTA
            |--------------------------------------------------------------------------
            */

            responder(
                [

                    'success' =>
                        true,

                    'action' =>
                        'auditorias',

                    'filtros' => [

                        'data_inicio' =>
                            $dataInicio !== ''
                                ? $dataInicio
                                : null,

                        'data_fim' =>
                            $dataFim !== ''
                                ? $dataFim
                                : null,

                        'atendente' =>
                            $filtroAtendente !== ''
                                ? $filtroAtendente
                                : null
                    ],

                    'total' =>
                        count(
                            $auditoriasResultado
                        ),

                    'auditorias' =>
                        $auditoriasResultado
                ]
            );


        } catch (PDOException $e) {

            responder(
                [

                    'success' =>
                        false,

                    'error' =>
                        'Erro MySQL ao carregar auditorias: ' .
                        $e->getMessage(),

                    'action' =>
                        'auditorias'

                ],
                500
            );
        }

        break;


    /*
    |--------------------------------------------------------------------------
    | DELETE
    |--------------------------------------------------------------------------
    */

    case 'delete':

        $id =
            $_GET['id']
            ?? ($data['id'] ?? null);


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


        try {

            $stmt =
                $pdo->prepare(
                    "DELETE FROM erros WHERE id = ?"
                );


            $stmt->execute(
                [
                    $id
                ]
            );


            $affectedRows =
                $stmt->rowCount();


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


            foreach (
                $records
                as &$record
            ) {

                $auditoriasRecord = [];


                if (
                    isset(
                        $record['auditorias']
                    ) &&
                    $record['auditorias'] !== null &&
                    trim(
                        (string)$record['auditorias']
                    ) !== ''
                ) {

                    $decoded =
                        json_decode(
                            $record['auditorias'],
                            true
                        );


                    if (
                        json_last_error() === JSON_ERROR_NONE &&
                        is_array($decoded)
                    ) {

                        $auditoriasRecord =
                            $decoded;
                    }
                }


                /*
                |--------------------------------------------------------------------------
                | COMPATIBILIDADE COM REGISTROS ANTIGOS
                |--------------------------------------------------------------------------
                */

                if (
                    empty(
                        $auditoriasRecord
                    )
                ) {

                    $temAuditoriaLegada =

                        $record['nota_final'] !== null ||

                        trim(
                            (string)(
                                $record['veredito']
                                ?? ''
                            )
                        ) !== '' ||

                        trim(
                            (string)(
                                $record['objetivo']
                                ?? ''
                            )
                        ) !== '' ||

                        trim(
                            (string)(
                                $record['oportunidade_ps']
                                ?? ''
                            )
                        ) !== '' ||

                        trim(
                            (string)(
                                $record['oferta_ps']
                                ?? ''
                            )
                        ) !== '' ||

                        trim(
                            (string)(
                                $record['relatorio_markdown']
                                ?? ''
                            )
                        ) !== '';


                    if ($temAuditoriaLegada) {

                        $auditoriasRecord[] = [

                            'atendente' =>
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

                            'oferta_ps' =>
                                $record['oferta_ps'] ?? '',

                            'avaliacoes' =>
                                [],

                            'relatorio_markdown' =>
                                $record['relatorio_markdown'] ?? ''
                        ];
                    }
                }


                $record['auditorias'] =
                    $auditoriasRecord;
            }


            unset($record);


            $totalPages =
                $totalRows > 0

                    ? (int)ceil(
                        $totalRows /
                        $limit
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