
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1567, 'Sistema de Origem', 'NOME_ARQUIVO', 'Código do sistema de origem das informaçöes, mantido no instituoional com Sistemas de Origem.', 4.0, 
1.0, 'PADRAO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1567 AND no_campo = 'Sistema de Origem'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1568, 'Exercício Financeiro', 'NOME_ARQUIVO', 'Ano corrente da execuçäo da despesa de pessoal.', 1.0, 
2.0, 'REFERENCIA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1568 AND no_campo = 'Exercício Financeiro'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1569, 'Mês de Competência', 'NOME_ARQUIVO', 'Mês de competência da despesa de pessoal.', 2.0, 
3.0, 'REFERENCIA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1569 AND no_campo = 'Mês de Competência'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1570, 'Tipo de Processamento', 'NOME_ARQUIVO', 'Código do tipo de processamento, conforme campo do Header do Arquivo.', 2.0, 
4.0, 'REFERENCIA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1570 AND no_campo = 'Tipo de Processamento'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1571, 'Tipo de Folha', 'NOME_ARQUIVO', 'ldentifica outros tipos diferentes e permitidos de folha de pagamento  Tipo para o mesmo tipo de folha.', 2.0, 
5.0, 'REFERENCIA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1571 AND no_campo = 'Tipo de Folha'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1572, 'Número do Arquivo', 'NOME_ARQUIVO', 'Número do arquivo, criado e controlado pelo responsável pela geraçåo do arquivo de despesa de pessoal. Nåo pode ser repetido', 10.0, 
6.0, 'REFERENCIA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1572 AND no_campo = 'Número do Arquivo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1573, 'Tipo de Registro', 'HEADER_ARQUIVO', 'ldentifica o tipo de registro no arquivo.', 1.0, 
1.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1573 AND no_campo = 'Tipo de Registro'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1574, 'Tipo de Processamento', 'HEADER_ARQUIVO', 'lndica a funçäo do arquivo para execuçåo no sistema.', 2.0, 
2.0, 'SELECAO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1574 AND no_campo = 'Tipo de Processamento'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1575, 'Número de Lote', 'HEADER_ARQUIVO', 'Número sequencial para identificar univocamente um lote de informaçäo.', 4.0, 
3.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1575 AND no_campo = 'Número de Lote'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1576, 'Exercício Financeiro', 'HEADER_ARQUIVO', 'Ano corrente da apropriação da despesa de pessoal.', 4.0, 
4.0, 'NUMERICO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1576 AND no_campo = 'Exercício Financeiro'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1577, 'Ano de Competência', 'HEADER_ARQUIVO', 'Ano de competência da despesa de pessoal.', 4.0, 
5.0, 'NUMERICO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1577 AND no_campo = 'Ano de Competência'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1578, 'Mês de Competência', 'HEADER_ARQUIVO', 'Mês de competência da despesa de pessoal.', 2.0, 
6.0, 'SELECAO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1578 AND no_campo = 'Mês de Competência'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1579, 'Número do Arquivo', 'HEADER_ARQUIVO', 'Número do arquivo, criado e controlado pelo responsável pela geraçäo do arquivo', 10.0, 
7.0, 'NUMERICO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1579 AND no_campo = 'Número do Arquivo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1580, 'Sistema de Origem', 'HEADER_ARQUIVO', 'Código do sistema de origem das informaçöes.', 4.0, 
8.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1580 AND no_campo = 'Sistema de Origem'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1581, 'Tipo de registro ', 'HEADER_LOTE', 'Identifica o tipo de registro no arquivo.(Header Lote)', 1.0, 
1.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1581 AND no_campo = 'Tipo de registro '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1582, 'Número do lote ', 'HEADER_LOTE', 'Número sequencial para identificar univocamente um lote de informação. ', 4.0, 
2.0, 'SEQUENCIAL', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1582 AND no_campo = 'Número do lote '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1583, 'Indicador do Tipo de Folha', 'HEADER_ARQUIVO', 'ldentificaçåo da caracterfstica da folha de pessoal.', 2.0, 
9.0, 'SELECAO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1583 AND no_campo = 'Indicador do Tipo de Folha'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1584, 'Unidade Orçamentária – Órgão Executor ', 'HEADER_LOTE', 'Código do órgão executor cadastrado no header do arquivo ', 5.0, 
3.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1584 AND no_campo = 'Unidade Orçamentária – Órgão Executor '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1585, 'Tipo de registro', 'TRAILER_LOTE', 'Código do identificador de tipo de registro', 1.0, 
1.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1585 AND no_campo = 'Tipo de registro'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1586, 'Data de Geração do Arquivo', 'HEADER_ARQUIVO', 'Data de criação do arquivo pelo sistema de origem no formato DDMMAAAA', 8.0, 
10.0, 'DATA_SISTEMA', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1586 AND no_campo = 'Data de Geração do Arquivo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1587, 'Hora de Geração do Arquivo', 'HEADER_ARQUIVO', 'Hora de geraçåo do arquivo pelo sistema de origem no formato HHMMSS', 6.0, 
11.0, 'HORA_SISTEMA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1587 AND no_campo = 'Hora de Geração do Arquivo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1588, 'Número de lote', 'TRAILER_LOTE', 'Número sequencial que identifica unicamente um lote de informação ', 4.0, 
2.0, 'SEQUENCIAL', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1588 AND no_campo = 'Número de lote'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1589, 'Número de Escalas de Pagamento', 'HEADER_ARQUIVO', 'Número de escalas de pagamento que seräo realizadas.', 2.0, 
12.0, 'NUMERICO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1589 AND no_campo = 'Número de Escalas de Pagamento'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1590, 'Número da Escala Sendo Paga', 'HEADER_ARQUIVO', 'Número da escala de pagamento que está sendo paga.', 2.0, 
13.0, 'NUMERICO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1590 AND no_campo = 'Número da Escala Sendo Paga'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1591, 'Número do Arquivo de Apropriação', 'HEADER_ARQUIVO', 'Número do arquivo de apropriaçäo relacionado ao arquivo sendo enviado', 10.0, 
14.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1591 AND no_campo = 'Número do Arquivo de Apropriação'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1592, 'Quantidade de registros do lote', 'TRAILER_LOTE', 'Quantidade total de registros pertencentes ao lote ', 10.0, 
3.0, 'QUANTIDADE_LINHA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1592 AND no_campo = 'Quantidade de registros do lote'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1593, 'Justificativa', 'HEADER_ARQUIVO', 'Justificativa padrão para o arquivo', 30.0, 
14.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1593 AND no_campo = 'Justificativa'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1594, 'Tipo de Registro', 'TRAILER_ARQUIVO', 'ldentifica o tipo de registro no arquivo.', 1.0, 
1.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1594 AND no_campo = 'Tipo de Registro'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1595, 'Valor líquido por UO - Servidor', 'TRAILER_LOTE', 'Somatório do valor líquido por UO - Servidor (verba 1 + verba 3 - verba 2 (TIPO 10 - IR) - verba 4) ', 15.0, 
4.0, 'CALCULO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1595 AND no_campo = 'Valor líquido por UO - Servidor'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1596, 'Número do Lote', 'TRAILER_ARQUIVO', 'Ntlmero sequencial para identificar univocamente um lote de informaçäo.', 4.0, 
2.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1596 AND no_campo = 'Número do Lote'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1597, 'Valor líquido por UO - Patronal', 'TRAILER_LOTE', 'Somatório do valor líquido por UO - Patronal (verba 6 - verba 7) ', 15.0, 
5.0, 'CALCULO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1597 AND no_campo = 'Valor líquido por UO - Patronal'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1598, 'Quantidade de Lotes', 'TRAILER_ARQUIVO', 'Quantidade de lotes enviados no arquivo', 4.0, 
3.0, 'QUANTIDADE_LOTE', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1598 AND no_campo = 'Quantidade de Lotes'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1599, 'Quantidade de Registros do Arquivo', 'TRAILER_ARQUIVO', 'Número total de registros pertencentes ao arquivo.', 10.0, 
4.0, 'QUANTIDADE_LINHA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1599 AND no_campo = 'Quantidade de Registros do Arquivo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1600, 'Valor líquido por UO - Retenção', 'TRAILER_LOTE', 'Somatório do valor líquido por UO - retenção (verba 2) ', 15.0, 
6.0, 'CALCULO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1600 AND no_campo = 'Valor líquido por UO - Retenção'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1601, 'Tipo de registro ', 'CONTEUDO_LOTE', 'Código do identificador de tipo de registro ', 1.0, 
1.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1601 AND no_campo = 'Tipo de registro '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1602, 'Número de lote ', 'CONTEUDO_LOTE', 'Número sequencial para identificar univocamente um lote de informação. Criado e controlado paelo responsável pela geração do arquivo. ', 4.0, 
2.0, 'REFERENCIA', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1602 AND no_campo = 'Número de lote '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1609, 'Identificador do tipo de despesa de pessoal ', 'CONTEUDO_LOTE', 'Identificação da origem da despesa para detalhamento da execução ', 2.0, 
3.0, 'SELECAO', True, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1609 AND no_campo = 'Identificador do tipo de despesa de pessoal '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1615, 'Tipo de Retenção ', 'CONTEUDO_LOTE', 'Indica a origem da retenção prevista para a folha de pagamento ', 4.0, 
5.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1615 AND no_campo = 'Tipo de Retenção '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1622, 'Função ', 'CONTEUDO_LOTE', 'Código da função ', 2.0, 
6.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1622 AND no_campo = 'Função '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1631, 'Subfunção ', 'CONTEUDO_LOTE', 'Campo destinado para a inserção da Subfunção do lote ', 3.0, 
7.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1631 AND no_campo = 'Subfunção '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1632, 'Programa ', 'CONTEUDO_LOTE', 'Campo destinado para a inserção do Programa do lote ', 3.0, 
8.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1632 AND no_campo = 'Programa '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1635, 'Identificador de Projeto / Atividade', 'CONTEUDO_LOTE', 'Campo destinado para a inserção do Identificador de Projeto / Atividade do lote', 1.0, 
9.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1635 AND no_campo = 'Identificador de Projeto / Atividade'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1636, 'Projeto / Atividade ', 'CONTEUDO_LOTE', 'Campo destinado para a inserção do Projeto / Atividade do lote ', 3.0, 
10.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1636 AND no_campo = 'Projeto / Atividade '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1637, 'Subprojeto / Subatividade ', 'CONTEUDO_LOTE', 'Campo destinado para a inserção do Subprojeto / Subatividade do lote ', 4.0, 
11.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1637 AND no_campo = 'Subprojeto / Subatividade '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1638, 'Categoria Econômica ', 'CONTEUDO_LOTE', 'Campo destinado para a inserção da Categoria Econômica do lote ', 1.0, 
12.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1638 AND no_campo = 'Categoria Econômica '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1641, 'Grupo de despesa', 'CONTEUDO_LOTE', 'Campo destinado para a inserção do Grupo de Despesa da linha ', 1.0, 
13.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1641 AND no_campo = 'Grupo de despesa'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1646, 'Modalidade de Aplicação ', 'CONTEUDO_LOTE', 'Campo destinado para a seleção da Modalidade de Aplicação do lote ', 2.0, 
14.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1646 AND no_campo = 'Modalidade de Aplicação '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1647, 'Elemento Despesa ', 'CONTEUDO_LOTE', 'Campo destinado para a inserção do Item de Despesa da linha ', 3.0, 
15.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1647 AND no_campo = 'Elemento Despesa '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1648, 'Item de Despesa ', 'CONTEUDO_LOTE', 'Campo destinado para a inserção do Item de Despesa da linha ', 3.0, 
16.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1648 AND no_campo = 'Item de Despesa '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1649, 'IAG', 'CONTEUDO_LOTE', 'Campo destinado para seleção IAG do arquivo. ', 2.0, 
17.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1649 AND no_campo = 'IAG'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1650, 'Grupo da Fonte ', 'CONTEUDO_LOTE', 'Campo destinado para a seleção do Grupo de Fonte do lote ', 2.0, 
18.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1650 AND no_campo = 'Grupo da Fonte '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1651, 'Fonte de Recurso ', 'CONTEUDO_LOTE', 'Campo destinado para a seleção da Fonte de Recurso do lote ', 6.0, 
19.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1651 AND no_campo = 'Fonte de Recurso '
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1654, 'IPU', 'CONTEUDO_LOTE', 'Campo destinado para a inserção do IPU da linha', 2.0, 
20.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1654 AND no_campo = 'IPU'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2821, 'Elemento-item de origem', 'CONTEUDO_LOTE', 'Elemento de origem para DEA (despesa de exercício anterior)', 3.0, 
21.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2821 AND no_campo = 'Elemento-item de origem'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2822, 'Item Origem', 'CONTEUDO_LOTE', 'Item de origem para DEA (despesa de exercicio anterior)', 3.0, 
22.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2822 AND no_campo = 'Item Origem'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2823, 'Tipo de inscrição do credor da execução de despesa de pessoal', 'CONTEUDO_LOTE', 'Identificador do tipo de inscrição do credor', 1.0, 
23.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2823 AND no_campo = 'Tipo de inscrição do credor da execução de despesa de pessoal'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2824, 'Credor da execução de despesa de pessoal', 'CONTEUDO_LOTE', 'CAPF de apropriação da despesa de pessoal', 14.0, 
24.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2824 AND no_campo = 'Credor da execução de despesa de pessoal'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2825, 'Tipo de inscrição do credor da retenção / restituição / patronal', 'CONTEUDO_LOTE', 'Identificador do tipo de inscrição credor', 1.0, 
25.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2825 AND no_campo = 'Tipo de inscrição do credor da retenção / restituição / patronal'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2826, 'Credor da retenção / restituição / patronal', 'CONTEUDO_LOTE', 'CNPJ do credor da retenção restituição patronal', 14.0, 
26.0, 'NUMERICO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2826 AND no_campo = 'Credor da retenção / restituição / patronal'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2827, 'Código de receita', 'CONTEUDO_LOTE', 'Código da receita previdenciária', 6.0, 
27.0, 'NUMERICO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2827 AND no_campo = 'Código de receita'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2828, 'Ano de referência da retenção / patronal / Despesa Bruta Servidor', 'CONTEUDO_LOTE', 'Ano de referência da retenção / patronal / Despesa Bruta Servidor', 4.0, 
28.0, 'NUMERICO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2828 AND no_campo = 'Ano de referência da retenção / patronal / Despesa Bruta Servidor'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2829, 'Mês de referência da retenção / patronal / Despesa Bruta Servidor', 'CONTEUDO_LOTE', 'Mês de referência da retenção / patronal / Despesa Bruta Servidor', 2.0, 
29.0, 'NUMERICO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2829 AND no_campo = 'Mês de referência da retenção / patronal / Despesa Bruta Servidor'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2830, 'Valor', 'CONTEUDO_LOTE', 'Valor a ser apropriado/retido', 15.0, 
30.0, 'MONETARIO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2830 AND no_campo = 'Valor'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2837, 'Centro de custo', 'CONTEUDO_LOTE', 'Código do centro de custo', 7.0, 
31.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2837 AND no_campo = 'Centro de custo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2838, 'Instrumento Jurídico da Fonte', 'CONTEUDO_LOTE', 'Número do instrumento jurídico de entrada da fonte', 10.0, 
32.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2838 AND no_campo = 'Instrumento Jurídico da Fonte'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2839, 'Instrumento Jurídico do IPU', 'CONTEUDO_LOTE', 'Número do instrumento jurídico de entrada da procedencia', 10.0, 
33.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2839 AND no_campo = 'Instrumento Jurídico do IPU'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2840, 'Órgão executor da despesa', 'CONTEUDO_LOTE', 'Código do órgão executor da despesa orçamentária a ser eapropriada', 5.0, 
34.0, 'PADRAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2840 AND no_campo = 'Órgão executor da despesa'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2841, 'Unidade Orçamentária Beneficiária da Retenção', 'CONTEUDO_LOTE', 'Código da unidade Orçamentária Beneficiária da Retenção', 5.0, 
35.0, 'SELECAO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2841 AND no_campo = 'Unidade Orçamentária Beneficiária da Retenção'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2842, 'Unidade Financeira do gasto', 'CONTEUDO_LOTE', 'Código da unidade orçamentaria financeira do gasto', 5.0, 
36.0, 'NUMERICO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2842 AND no_campo = 'Unidade Financeira do gasto'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4094, 'Proventos Ativos', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Proventos ativo".', 99.0, 
1.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4094 AND no_campo = 'Proventos Ativos'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4301, 'Identificador de Tipo de Verba', 'CONTEUDO_LOTE', 'Identificador de vantagens e descontos', 2.0, 
4.0, 'SELECAO', False, 
True, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4301 AND no_campo = 'Identificador de Tipo de Verba'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4575, 'Ano de referência da DEA', 'CONTEUDO_LOTE', 'Ano de referência da DEA', 4.0, 
37.0, 'NUMERICO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4575 AND no_campo = 'Ano de referência da DEA'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4576, 'Mês de referência da DEA', 'CONTEUDO_LOTE', 'Mês de referência da DEA', 2.0, 
38.0, 'NUMERICO', False, 
False, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4576 AND no_campo = 'Mês de referência da DEA'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4962, 'Proventos Inativos', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Proventos inativo".', 99.0, 
2.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4962 AND no_campo = 'Proventos Inativos'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4963, 'Restituição ao Servidor - Ativo', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Restituição ao servidor - Ativo".', 99.0, 
3.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4963 AND no_campo = 'Restituição ao Servidor - Ativo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4964, 'Restituição ao Servidor - Inativo', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Restituição ao servidor - Inativo".', 99.0, 
4.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4964 AND no_campo = 'Restituição ao Servidor - Inativo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4965, 'Vencimentos e Gratificações', 'ESPECIFICACAO', '[Proventos Ativos] + [Proventos Inativos] + [Restituição ao Servidor – Ativo] + [Restituição ao Servidor – Inativo]', 99.0, 
5.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4965 AND no_campo = 'Vencimentos e Gratificações'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4966, 'Patronal - Ativo', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Patronal - Ativo".', 99.0, 
6.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4966 AND no_campo = 'Patronal - Ativo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4967, 'Patronal - Inativo', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Patronal - Inativo".', 99.0, 
7.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4967 AND no_campo = 'Patronal - Inativo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4968, 'Obrigações Patronais', 'ESPECIFICACAO', '[Patronal – Ativo] + [Patronal – Inativo]', 99.0, 
8.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4968 AND no_campo = 'Obrigações Patronais'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4969, 'Total Orçamentário', 'ESPECIFICACAO', '[Vencimentos e Gratificações] + [Obrigações Patronais]', 99.0, 
9.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4969 AND no_campo = 'Total Orçamentário'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4970, 'Consignações - Ativo', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Consignações - Ativo".', 99.0, 
10.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4970 AND no_campo = 'Consignações - Ativo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4971, 'Restituição ao Estado - Ativo', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com o tipo de averbação "Restituição ao Estado - Ativo".', 99.0, 
11.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4971 AND no_campo = 'Restituição ao Estado - Ativo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4972, 'Consignações - Inativo', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Consignações - Inativo".', 99.0, 
12.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4972 AND no_campo = 'Consignações - Inativo'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4973, 'Consignações', 'ESPECIFICACAO', '[Consignações – Ativo] + [Restituição ao Estado – Ativo] + [Consignações – Inativo]', 99.0, 
13.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4973 AND no_campo = 'Consignações'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4974, 'Total Líquido Antes do IRRF', 'ESPECIFICACAO', '[Vencimentos e Gratificações] – [Consignações]', 99.0, 
14.0, 'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4974 AND no_campo = 'Total Líquido Antes do IRRF'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4975, 'Valor Líquido Final', 'ESPECIFICACAO', '[Total Líquido Antes do IRRF] – [IRRF Ativo - IRRF Inativo]', 99.0, 
15.0, 'CALCULO_AVERBACAO', False, 
False, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4975 AND no_campo = 'Valor Líquido Final'
);
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4976, '001 – (OLP) Pensão alimento (Ativo + Inativo)', 'ESPECIFICACAO', 'Soma dos valores lançados nas linhas de lotes  que possuem o tipo de retenção “0001 - (OLP) Pensão alimento”', 99.0, 
16.0, 'CALCULO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4976 AND no_campo = '001 – (OLP) Pensão alimento (Ativo + Inativo)'
);

INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 2808, 1622, 3.0, 'PREENCHIMENTO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 2808 AND co_campo = 1622
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 2809, 1622, 9.0, 'PREENCHIMENTO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 2809 AND co_campo = 1622
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4420, 4301, 7.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4420 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4421, 4301, 3.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4421 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4422, 4301, 4.0, 'OPCIONAL', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4422 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4423, 4301, 7.0, 'OPCIONAL', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4423 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4424, 4301, 1.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4424 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4425, 4301, 6.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4425 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4426, 4301, 4.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4426 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4427, 4301, 5.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4427 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4428, 4301, 7.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4428 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4429, 4301, 3.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4429 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4430, 4301, 4.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4430 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4431, 4301, 5.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4431 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT 4432, 4301, 6.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4432 AND co_campo = 4301
);

INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 13, 11, '1', nan, 'Apropriação', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 13 AND co_campo = 11
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 14, 11, '2', nan, 'Pagamento', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 14 AND co_campo = 11
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 15, 11, '3', nan, 'Pagamentos não efetuados', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 15 AND co_campo = 11
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 16, 11, '4', nan, 'Anulação de despesa paga', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 16 AND co_campo = 11
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 17, 11, '5', nan, 'Anulação de despesa pendente de pagamento', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 17 AND co_campo = 11
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 69, 66, '6', nan, 'valor criado por cascade', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 69 AND co_campo = 66
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 869, 864, '1', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 869 AND co_campo = 864
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 870, 864, '2', nan, '2', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 870 AND co_campo = 864
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 881, 66, '7', nan, 'Outro valor pro mano isi', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 881 AND co_campo = 66
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1076, 1069, '1', nan, 'Primeira selecao', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1076 AND co_campo = 1069
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1077, 1069, '2', nan, 'segunda selecao', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1077 AND co_campo = 1069
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1078, 1070, '1', nan, 'LINHA selecao', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1078 AND co_campo = 1070
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1079, 1070, '2', nan, 'segunda LINHA selecao', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1079 AND co_campo = 1070
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1080, 1071, '1', nan, 'Outra LINHA seleca23o', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1080 AND co_campo = 1071
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1081, 1071, '2', nan, 'outra segunda LINHA selecao 2', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1081 AND co_campo = 1071
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1082, 1072, '1', nan, '2 4 Outra LINHA seleca23o', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1082 AND co_campo = 1072
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1083, 1072, '2', nan, 'outfdtgiyfg8ra segunda LINHA selecao 2', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1083 AND co_campo = 1072
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1406, 1409, '1', nan, '212o', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1406 AND co_campo = 1409
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1407, 1409, '6', nan, 'oyfgfhgfhgf', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1407 AND co_campo = 1409
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1490, 1504, '12', nan, 'primeiro valor', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1490 AND co_campo = 1504
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1491, 1504, '55', nan, 'novo valor', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1491 AND co_campo = 1504
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1508, 1505, '55', nan, 'nova descrição', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1508 AND co_campo = 1505
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1519, 1526, '15', nan, 'nova descrição', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1519 AND co_campo = 1526
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1520, 1527, '15', nan, 'nova descrição', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1520 AND co_campo = 1527
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1523, 1544, '5', nan, 'nova descrição', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1523 AND co_campo = 1544
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1528, 1550, '234', nan, 'wer', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1528 AND co_campo = 1550
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1530, 1552, '34', nan, 'dfs', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1530 AND co_campo = 1552
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1531, 1553, '34', nan, 'dfs', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1531 AND co_campo = 1553
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1545, 1551, '2', nan, 'wer', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1545 AND co_campo = 1551
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1546, 1564, '33', nan, 'asd', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1546 AND co_campo = 1564
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1547, 1565, '33', nan, 'asd', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1547 AND co_campo = 1565
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1548, 1566, '2', nan, 'asd', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1548 AND co_campo = 1566
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1549, 1567, '20', nan, 'Código do DP', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1549 AND co_campo = 1567
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1560, 1575, '0', nan, 'Primeiro lote', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1560 AND co_campo = 1575
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1564, 1580, '20', nan, 'Código do DP', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1564 AND co_campo = 1580
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1574, 1591, '0', nan, '0', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1574 AND co_campo = 1591
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1576, 1594, '9', nan, 'Trailer do arquivo', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1576 AND co_campo = 1594
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1577, 1596, '0', nan, 'Trailer do Arquivo', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1577 AND co_campo = 1596
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1592, 1601, '2', nan, 'Valor Esperado', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1592 AND co_campo = 1601
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1638, 1615, '1', nan, '(OLP) Pensão alimento', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1638 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1639, 1615, '2', nan, '(OLP) Recolhimento previdenciário -  RPPS - FUNFIP', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1639 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1640, 1615, '3', nan, '(OLP) Recolhimento previdenciário -  RPPS - IPSM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1640 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1641, 1615, '4', nan, '(OLP) Recolhimento previdenciário -  RGPS - INSS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1641 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1642, 1615, '5', nan, '(OLP) IPSEMG', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1642 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1643, 1615, '6', nan, '(OLP) Recolhimento previdenciário -  RPPS - demais entidades previdenciárias', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1643 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1644, 1615, '7', nan, '(OLP) Contribuições a entidades fechadas de previdência', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1644 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1645, 1615, '8', nan, '(OLP) Outros consignatários autorizados', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1645 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1646, 1615, '9', nan, '(OLP) Decisão Judicial', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1646 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1647, 1615, '10', nan, '(OP) IR', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1647 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1648, 1615, '11', nan, '(OP) Custo de processamento', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1648 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1649, 1615, '12', nan, '(OP) Transferência eletrônica de dados - TED', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1649 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1650, 1615, '13', nan, '(OLP) ISS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1650 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1651, 1615, '14', nan, '(OLP) Demais retenções', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 1651 AND co_campo = 1615
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2193, 1987, '3', nan, '3', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2193 AND co_campo = 1987
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2388, 2172, '1', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2388 AND co_campo = 2172
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2443, 2227, 'NULL', 1574.0, 'Tipo de Processamento', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2443 AND co_campo = 2227
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2474, 2258, '923', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2474 AND co_campo = 2258
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2475, 2258, '78', nan, '57', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2475 AND co_campo = 2258
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2991, 2767, 'NULL', 1573.0, 'Tipo de Registro', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2991 AND co_campo = 2767
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2995, 2768, 'NULL', 1573.0, 'Tipo de Registro', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2995 AND co_campo = 2768
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2996, 2768, 'NULL', 1574.0, 'Tipo de Processamento', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2996 AND co_campo = 2768
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2997, 2769, 'NULL', 1573.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2997 AND co_campo = 2769
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2999, 2770, 'NULL', 1574.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 2999 AND co_campo = 2770
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3066, 1573, '0', nan, 'Header de Arquivo', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3066 AND co_campo = 1573
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3079, 2838, '0000000000', nan, '0000000000', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3079 AND co_campo = 2838
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3080, 2839, '0', nan, '0', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3080 AND co_campo = 2839
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3081, 1602, 'NULL', 1588.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3081 AND co_campo = 1602
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3188, 2821, '0', nan, '0', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3188 AND co_campo = 2821
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3189, 2821, '1', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3189 AND co_campo = 2821
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3190, 2821, '11', nan, '11', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3190 AND co_campo = 2821
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3199, 2855, '01', nan, 'Teste 01', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3199 AND co_campo = 2855
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3200, 2856, '01', nan, 'Teste 01', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3200 AND co_campo = 2856
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3274, 1593, 'Execução da despesa de pessoal', nan, 'Valor padrão', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3274 AND co_campo = 1593
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3327, 1585, '8', nan, 'Trailer do Lote', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3327 AND co_campo = 1585
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3328, 2822, '1', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3328 AND co_campo = 2822
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3329, 2822, '2', nan, '2', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3329 AND co_campo = 2822
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3330, 2822, '0', nan, '0', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3330 AND co_campo = 2822
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3331, 2825, '1', nan, 'CPF', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3331 AND co_campo = 2825
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3332, 2825, '2', nan, 'CNPJ', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3332 AND co_campo = 2825
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3333, 2825, '3', nan, 'CAPF', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3333 AND co_campo = 2825
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3334, 2825, '4', nan, 'CAPJ', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3334 AND co_campo = 2825
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3642, 3135, 'NULL', 1573.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3642 AND co_campo = 3135
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3753, 2840, '10440', nan, 'DPMG', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3753 AND co_campo = 2840
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3754, 2841, '20011', nan, 'IPSEMG', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3754 AND co_campo = 2841
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3755, 2841, '40711', nan, 'FFP-MG', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3755 AND co_campo = 2841
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3756, 2837, '9999', nan, 'Centro de Custo Padrão', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3756 AND co_campo = 2837
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3757, 1647, '11', nan, '11', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3757 AND co_campo = 1647
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3758, 1647, '49', nan, '49', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3758 AND co_campo = 1647
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3759, 1647, '13', nan, '13', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3759 AND co_campo = 1647
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3760, 1647, '7', nan, '7', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3760 AND co_campo = 1647
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3761, 1647, '1', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3761 AND co_campo = 1647
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3762, 1647, '9', nan, '9', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3762 AND co_campo = 1647
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3763, 1647, '46', nan, '46', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3763 AND co_campo = 1647
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3806, 3294, 'NULL', 1580.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3806 AND co_campo = 3294
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3853, 1581, '1', nan, 'Header do lote', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3853 AND co_campo = 1581
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3879, 3361, 'NULL', 1573.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3879 AND co_campo = 3361
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3887, 3368, 'NULL', 1574.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3887 AND co_campo = 3368
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3888, 3369, 'NULL', 1573.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3888 AND co_campo = 3369
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 3915, 3396, '1', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 3915 AND co_campo = 3396
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4345, 3810, '2', nan, '56416', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4345 AND co_campo = 3810
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4346, 3811, '2', nan, '56416', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4346 AND co_campo = 3811
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4437, 1622, '9', nan, '9', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4437 AND co_campo = 1622
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4438, 1622, '3', nan, '3', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4438 AND co_campo = 1622
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4521, 1631, '272', nan, '272', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4521 AND co_campo = 1631
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4522, 1631, '92', nan, '92', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4522 AND co_campo = 1631
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4523, 1632, '705', nan, '705', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4523 AND co_campo = 1632
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4524, 1632, '726', nan, '726', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4524 AND co_campo = 1632
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4525, 1635, '4', nan, '4', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4525 AND co_campo = 1635
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4526, 1635, '7', nan, '7', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4526 AND co_campo = 1635
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4527, 1636, '6', nan, '6', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4527 AND co_campo = 1636
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4528, 1636, '193', nan, '193', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4528 AND co_campo = 1636
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4529, 1637, '1', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4529 AND co_campo = 1637
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4530, 1638, '3', nan, '3', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4530 AND co_campo = 1638
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4604, 1610, '1', nan, 'Despesa bruta (Servidor)', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4604 AND co_campo = 1610
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4605, 1610, '7', nan, 'Restituição de patronal', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4605 AND co_campo = 1610
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4606, 1610, '3', nan, 'Restituição ao servidor', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4606 AND co_campo = 1610
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4607, 1610, '5', nan, 'Anulação de apropriação', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4607 AND co_campo = 1610
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4608, 1610, '2', nan, 'Retenção', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4608 AND co_campo = 1610
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4609, 1610, '6', nan, 'Despesa bruta (patronal)', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4609 AND co_campo = 1610
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4610, 1610, '4', nan, 'Restituição ao estado', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4610 AND co_campo = 1610
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4627, 1649, '0', nan, 'Ação de Acompanhamento Geral', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4627 AND co_campo = 1649
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4628, 1649, '1', nan, 'Ação de Acompanhamento Intensivo', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4628 AND co_campo = 1649
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4860, 2824, '99999999727', nan, '999.999.997-27', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4860 AND co_campo = 2824
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4861, 2824, '99999999999', nan, '999.999.999-99', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4861 AND co_campo = 2824
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4901, 1574, '1', nan, 'Apropriação', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4901 AND co_campo = 1574
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4902, 1574, '3', nan, 'Pagamentos não efetuados', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4902 AND co_campo = 1574
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4903, 1574, '4', nan, 'Anulação de despesa paga', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4903 AND co_campo = 1574
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4904, 1574, '5', nan, 'Anulação de despesa pendente de pagamento', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4904 AND co_campo = 1574
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4905, 1574, '2', nan, 'Pagamento', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4905 AND co_campo = 1574
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4906, 1578, '04', nan, 'Abril', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4906 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4907, 1578, '07', nan, 'Julho', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4907 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4908, 1578, '02', nan, 'Fevereiro', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4908 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4909, 1578, '06', nan, 'Junho', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4909 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4910, 1578, '10', nan, 'Outubro', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4910 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4911, 1578, '11', nan, 'Novembro', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4911 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4912, 1578, '12', nan, 'Dezembro', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4912 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4913, 1578, '01', nan, 'Janeiro', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4913 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4914, 1578, '09', nan, 'Setembro', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4914 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4915, 1578, '05', nan, 'Maio', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4915 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4916, 1578, '03', nan, 'Março', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4916 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4917, 1578, '08', nan, 'Agosto', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4917 AND co_campo = 1578
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4918, 1583, '1', nan, 'Mensal', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4918 AND co_campo = 1583
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4919, 1583, '2', nan, 'Extra Mensal', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4919 AND co_campo = 1583
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4920, 1583, '3', nan, 'OPE (Ordem de pagamento especial)', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4920 AND co_campo = 1583
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4921, 1583, '4', nan, '13 Salario', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4921 AND co_campo = 1583
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4977, 1609, '3', nan, 'Ativo - RPPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4977 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4978, 1609, '13', nan, 'Patronal Pensão - RPPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4978 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4979, 1609, '5', nan, 'Inativo - RPPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4979 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4980, 1609, '6', nan, 'Contrato', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4980 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4981, 1609, '12', nan, 'Patronal Inativo - RPPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4981 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4982, 1609, '11', nan, 'Patronal Contrato RGPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4982 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4983, 1609, '1', nan, 'Ativo - Militar', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4983 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4984, 1609, '8', nan, 'Patronal Ativo RPPS - Estado', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4984 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4985, 1609, '16', nan, 'Pensões - RPPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4985 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4986, 1609, '15', nan, 'Pensões - Militar', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4986 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4987, 1609, '14', nan, 'Outras Pensões GD 3', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4987 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4988, 1609, '7', nan, 'Patronal Ativo RGPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4988 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4989, 1609, '9', nan, 'Patronal Ativo RPPS - Município', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4989 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4990, 1609, '2', nan, 'Ativo - RGPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4990 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4991, 1609, '10', nan, 'Patronal Ativo RPPS - União', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4991 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4992, 1609, '4', nan, 'Inativo - Militar', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 4992 AND co_campo = 1609
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5007, 1646, '90', nan, '90', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5007 AND co_campo = 1646
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5008, 1646, '91', nan, '91', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5008 AND co_campo = 1646
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5009, 1650, '33', nan, 'Tesouro – Exercícios Anteriores (Superávit Financeiro)', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5009 AND co_campo = 1650
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5010, 1650, '11', nan, 'Tesouro – Exercício Corrente', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5010 AND co_campo = 1650
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5011, 1650, '44', nan, ' Outras Fontes – Exercícios Anteriores (Superávit Financeiro)', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5011 AND co_campo = 1650
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5012, 1650, '22', nan, ' Outras Fontes - Exercício Corrente', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5012 AND co_campo = 1650
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5013, 1641, '1', nan, 'PESSOAL E ENCARGOS SOCIAIS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5013 AND co_campo = 1641
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5014, 1641, '3', nan, 'OUTRAS DESPESAS CORRENTES', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5014 AND co_campo = 1641
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5015, 1641, '4', nan, ' INVESTIMENTOS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5015 AND co_campo = 1641
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5016, 1641, '5', nan, 'INVERSÕES FINANCEIRAS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5016 AND co_campo = 1641
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5017, 1641, '6', nan, ' AMORTIZAÇÃO DA DÍVIDA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5017 AND co_campo = 1641
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5018, 1641, '2', nan, 'JUROS E ENCARGOS DA DÍVIDA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5018 AND co_campo = 1641
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5082, 1654, '1', nan, 'RECURSOS RECEBIDOS PARA LIVRE UTILIZAÇÃO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5082 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5083, 1654, '3', nan, 'RECURSOS RECEBIDOS PARA CONTRAPARTIDA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5083 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5084, 1654, '9', nan, 'RECURSOS RECEBIDOS PARA PRECATÓRIOS E SENTENÇAS JUDICIAIS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5084 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5085, 1654, '5', nan, 'RECURSOS RECEBIDOS PARA BENEFÍCIOS PREVISTOS NO ART. 39 DA LEI COMPLEMENTAR 64/2002', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5085 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5086, 1654, '0', nan, 'RECURSOS DECORRENTES DA DESVINCULAÇÃO DE RECEITAS CONFORME A EC 93/2016', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5086 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5087, 1654, '6', nan, 'RECURSOS RECEBIDOS PARA CONTRAPARTIDA DE OPERAÇÃO DE CRÉDITO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5087 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5088, 1654, '4', nan, 'RECURSOS RECEBIDOS PARA ATENDIMENTO DE DEMANDAS DE PARTICIPAÇÃO CIDADÃ', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5088 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5089, 1654, '8', nan, 'RECURSOS RECEBIDOS PARA EMENDAS PARLAMENTARES', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5089 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5090, 1654, '2', nan, 'RECURSOS RECEBIDOS DE OUTRA UNIDADE ORÇAMENTÁRIA DO ORÇAMENTO FISCAL PARA LIVRE UTILIZAÇÃO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5090 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5091, 1654, '7', nan, 'RECURSOS RECEBIDOS PARA AUXÍLIOS DOENÇA, FUNERAL, ALIMENTAÇÃO, TRANSPORTE E FARDAMENTO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5091 AND co_campo = 1654
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5155, 1584, '10441', nan, 'DP', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5155 AND co_campo = 1584
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5174, 1568, 'NULL', 1576.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5174 AND co_campo = 1568
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5178, 1572, 'NULL', 1579.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5178 AND co_campo = 1572
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5179, 1569, 'NULL', 1578.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5179 AND co_campo = 1569
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5180, 1570, 'NULL', 1574.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5180 AND co_campo = 1570
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5181, 1571, 'NULL', 1583.0, 'NULL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5181 AND co_campo = 1571
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5303, 1651, '32', nan, 'EXPLORAÇÃO DE RECURSOS MINERAIS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5303 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5304, 1651, '59', nan, 'OUTROS RECURSOS VINCULADOS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5304 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5305, 1651, '61', nan, 'RECURSOS DIRETAMENTE ARRECADADOS COM VINCULAÇÃO ESPECÍFICA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5305 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5306, 1651, '500010', nan, 'RECURSOS ORDINÁRIOS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5306 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5307, 1651, '80', nan, 'CONTRIBUIÇÃO DO SERVIDOR PARA FUNPREV', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5307 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5308, 1651, '81', nan, 'RECURSOS DE DEPÓSITOS JUDICIAIS – LEI 21.720/15', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5308 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5309, 1651, '24', nan, 'CONVÊNIOS, ACORDOS E AJUSTES PROVENIENTES DA UNIÃO E SUAS ENTIDADES', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5309 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5310, 1651, '31', nan, 'UTILIZAÇÃO DE RECURSOS HÍDRICOS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5310 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5311, 1651, '49', nan, 'CONTRIBUIÇÃO PATRONAL AOS INSTITUTOS DE PREVIDÊNCIA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5311 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5312, 1651, '53', nan, 'TAXA DE INCÊNDIO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5312 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5313, 1651, '77', nan, 'RECEITAS DE FISCALIZAÇÃO, TAXAS E CUSTAS JUDICIAIS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5313 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5314, 1651, '84', nan, 'TRANSFERÊNCIAS DE RECURSOS DO SUS PARA A GESTÃO DO SUS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5314 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5315, 1651, '73', nan, 'ACORDOS E AJUSTES DE COOPERAÇÃO MÚTUA COM A UNIÃO E SUAS ENTIDADES', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5315 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5316, 1651, '46', nan, 'DOAÇÕES DE PESSOAS, DE INSTITUIÇÕES PRIVADAS OU DO EXTERIOR AO TESOURO ESTADUAL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5316 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5317, 1651, '40', nan, 'RECURSOS FUNDOS EXTINTOS – LEI Nº 13.848/2001', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5317 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5318, 1651, '48', nan, 'ALIENAÇÃO DE BENS DO TESOURO ESTADUAL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5318 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5319, 1651, '28', nan, 'TAXA DE FISCALIZAÇÃO JUDICIÁRIA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5319 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5320, 1651, '51', nan, 'CONTRIBUIÇÃO DE INTERVENÇÃO NO DOMÍNIO ECONÔMICO / COMBUSTÍVEIS – CIDE', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5320 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5321, 1651, '42', nan, 'CONTRIBUIÇÃO PATRONAL PARA FUNFIP', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5321 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5322, 1651, '75', nan, 'CONTRIBUIÇÃO PATRONAL PARA CUSTEIO DOS PROVENTOS DOS MILITARES', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5322 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5323, 1651, '41', nan, 'CESSÃO DE CRÉDITOS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5323 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5324, 1651, '30', nan, 'CONTRIBUIÇÃO À APOSENTADORIA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5324 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5325, 1651, '60', nan, 'RECURSOS DIRETAMENTE ARRECADADOS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5325 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5326, 1651, '52', nan, 'TAXA DE CONTROLE E FISCALIZAÇÃO AMBIENTAL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5326 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5327, 1651, '82', nan, 'NOTIFICAÇÃO DE INFRAÇÃO DE TRÂNSITO – ESTADO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5327 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5328, 1651, '34', nan, 'NOTIFICAÇÃO DE INFRAÇÃO DE TRÂNSITO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5328 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5329, 1651, '47', nan, 'ALIENAÇÃO DE BENS DE ENTIDADES ESTADUAIS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5329 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5330, 1651, '37', nan, 'TRANSFERÊNCIAS DE RECURSOS DA UNIÃO VINCULADOS À SAÚDE', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5330 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5331, 1651, '72', nan, 'TAXA DE FISCALIZAÇÃO DE RECURSOS MINERÁRIOS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5331 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5332, 1651, '87', nan, 'TRANSFERÊNCIAS DE RECURSOS DO SUS PARA A ATENÇÃO BÁSICA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5332 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5333, 1651, '38', nan, 'TRANSFERÊNCIAS DE RECURSOS DA UNIÃO VINCULADOS AO ESPORTE', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5333 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5334, 1651, '79', nan, 'CONTRIBUIÇÃO PATRONAL PARA FUNPREV', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5334 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5335, 1651, '25', nan, 'OPERAÇÕES DE CRÉDITO CONTRATUAIS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5335 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5336, 1651, '86', nan, 'TRANSFERÊNCIAS DE RECURSOS DO SUS PARA A ASSISTÊNCIA FARMACÊUTICA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5336 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5337, 1651, '71', nan, 'RECURSOS DO FUNDO ESTADUAL DE ERRADICAÇÃO DA MISÉRIA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5337 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5338, 1651, '12', nan, 'OPERAÇÕES DE CRÉDITO CONTRATUAIS – SWAP', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5338 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5339, 1651, '35', nan, 'CONTRIBUIÇÃO AO FUNDESE', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5339 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5340, 1651, '27', nan, 'TAXA DE SEGURANÇA PÚBLICA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5340 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5341, 1651, '45', nan, 'DOAÇÕES DE PESSOAS, DE INSTITUIÇÕES PRIVADAS OU DO EXTERIOR A ÓRGÃOS E ENTIDADES DO ESTADO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5341 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5342, 1651, '90', nan, 'RECURSOS DECORRENTES DA COBRANÇA DOS CRÉDITOS INADIMPLIDOS INSCRITOS – LEI 22.606/2017', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5342 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5343, 1651, '58', nan, 'RECURSOS PARA COBERTURA DO DÉFICIT ATUARIAL DO RPPS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5343 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5344, 1651, '89', nan, 'RECURSOS DECORRENTES DA OPERAÇÃO DE SECURITIZAÇÃO DE ATIVOS DO FECIDAT', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5344 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5345, 1651, '55', nan, 'TRANSFERÊNCIAS DE RECURSOS DOS MUNICÍPIOS VINCULADOS À FARMÁCIA BÁSICA – FES', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5345 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5346, 1651, '26', nan, 'TAXA FLORESTAL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5346 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5347, 1651, '56', nan, 'TRANSFERÊNCIAS DE RECURSOS DA UNIÃO VINCULADOS A ASSISTÊNCIA SOCIAL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5347 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5348, 1651, '21', nan, 'COTA ESTADUAL DE SALÁRIO EDUCAÇÃO – QESE', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5348 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5349, 1651, '85', nan, 'TRANSFERÊNCIAS DE RECURSOS DO SUS PARA A VIGILÂNCIA EM SAÚDE', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5349 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5350, 1651, '33', nan, 'EXPLORAÇÃO E PRODUÇÃO DE PETRÓLEO E GÁS NATURAL', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5350 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5351, 1651, '76', nan, 'TAXA DE ADMINISTRAÇÃO DO FUNPEMG', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5351 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5352, 1651, '23', nan, 'FUNDO DE MANUTENÇÃO E DESENVOLVIMENTO DA EDUCAÇÃO BÁSICA – FUNDEB', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5352 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5353, 1651, '29', nan, 'TAXA DE EXPEDIENTE', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5353 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5354, 1651, '88', nan, 'TRANSFERÊNCIAS DE RECURSOS DO SUS PARA INVESTIMENTOS NA REDE DE SERVIÇOS DE SAÚDE', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5354 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5355, 1651, '83', nan, 'NOTIFICAÇÃO DE INFRAÇÃO DE TRÂNSITO – FUNTRANS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5355 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5356, 1651, '22', nan, 'TRANSFERÊNCIAS DE RECURSOS DO SUS PARA ATENÇÃO DE MÉDIA E ALTA COMPLEXIDADE AMBULATORIAL E HOSPITALAR', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5356 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5357, 1651, '70', nan, 'CONVÊNIOS, ACORDOS E AJUSTES PROVENIENTES DOS MUNICÍPIOS, ESTADOS E ORGANIZAÇÕES PARTICULARES', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5357 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5358, 1651, '43', nan, 'CONTRIBUIÇÃO DE SERVIDOR PARA FUNFIP', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5358 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5359, 1651, '36', nan, 'TRANSFERÊNCIAS DE RECURSOS DA UNIÃO VINCULADOS À EDUCAÇÃO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5359 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5360, 1651, '20', nan, 'RECURSOS CONSTITUCIONALMENTE VINCULADOS AOS MUNICÍPIOS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5360 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5361, 1651, '54', nan, 'TAXA DE LICENCIAMENTO DA FAIXA DE DOMÍNIO DAS RODOVIAS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5361 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5362, 1651, '39', nan, 'MULTAS PECUNIÁRIAS E JUROS DE MORA FIXADOS EM SENTENÇAS JUDICIAIS', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5362 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5363, 1651, '50', nan, 'CONTRIBUIÇÃO DO SERVIDOR AOS INSTITUTOS DE PREVIDÊNCIA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5363 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5364, 1651, '57', nan, 'TRANSFERÊNCIAS DE RECURSOS DA UNIÃO POR MEIO DE PORTARIA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5364 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5365, 1651, '44', nan, 'COMPENSAÇÃO FINANCEIRA ENTRE REGIMES DE PREVIDÊNCIA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5365 AND co_campo = 1651
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5436, 2823, '1', nan, 'CPF', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5436 AND co_campo = 2823
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5437, 2823, '4', nan, 'CAPJ', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5437 AND co_campo = 2823
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5438, 2823, '3', nan, 'CAPF', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5438 AND co_campo = 2823
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5439, 2823, '2', nan, 'CNPJ', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5439 AND co_campo = 2823
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5480, 4301, '04', nan, 'Restituição ao Estado', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5480 AND co_campo = 4301
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5481, 4301, '06', nan, 'Despesa Bruta (patronal)', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5481 AND co_campo = 4301
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5482, 4301, '05', nan, 'Anulação de Apropriação', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5482 AND co_campo = 4301
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5483, 4301, '02', nan, 'Retenção', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5483 AND co_campo = 4301
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5484, 4301, '01', nan, 'Despesa Bruta (servidor)', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5484 AND co_campo = 4301
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5485, 4301, '07', nan, 'Restituição de Patronal', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5485 AND co_campo = 4301
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5486, 4301, '03', nan, 'Restituição ao Servidor', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5486 AND co_campo = 4301
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5538, 1648, '1', nan, '1', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5538 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5539, 1648, '3', nan, '3', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5539 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5540, 1648, '4', nan, '4', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5540 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5541, 1648, '5', nan, '5', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5541 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5542, 1648, '6', nan, ' 6', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5542 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5543, 1648, '9', nan, '9', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5543 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5544, 1648, '19', nan, '19', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5544 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5545, 1648, '21', nan, '21', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5545 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5546, 1648, '22', nan, '22', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5546 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5547, 1648, '44', nan, '44', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5547 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5548, 1648, '45', nan, '45', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5548 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5549, 1648, '46', nan, '46', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5549 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5550, 1648, '48', nan, '48', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5550 AND co_campo = 1648
);
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 5551, 1648, '99', nan, '99', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = 5551 AND co_campo = 1648
);

INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1079, 'PROVENTOS - ATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1079
);
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1080, 'PROVENTOS - INATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1080
);
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1083, 'RESTITUIÇÃO AO SERVIDOR - ATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1083
);
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1084, 'RESTITUIÇÃO AO SERVIDOR - INATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1084
);
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1085, 'PATRONAL - ATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1085
);
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1088, 'PATRONAL - INATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1088
);
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1111, 'CONSIGNAÇÕES - ATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1111
);
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1112, 'RESTITUIÇÃO AO ESTADO - ATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1112
);
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1113, 'CONSIGNAÇÕES - INATIVO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = 1113
);

INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2097, 1595, 5486, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = 2097 AND co_campo = 1595
);
INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2098, 1595, 5483, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = 2098 AND co_campo = 1595
);
INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2099, 1595, 5480, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = 2099 AND co_campo = 1595
);
INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2100, 1595, 5484, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = 2100 AND co_campo = 1595
);
INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2101, 1597, 5485, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = 2101 AND co_campo = 1597
);
INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2102, 1597, 5481, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = 2102 AND co_campo = 1597
);
INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2103, 1600, 5483, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = 2103 AND co_campo = 1600
);
INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2474, 4976, 1638, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = 2474 AND co_campo = 4976
);

INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2469, 1583, 1.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2469 AND co_campo = 1583
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2470, 1576, 2.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2470 AND co_campo = 1576
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2471, 1579, 3.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2471 AND co_campo = 1579
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2472, 1599, 4.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2472 AND co_campo = 1599
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2503, 4301, 1.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2503 AND co_campo = 4301
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2504, 1647, 2.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2504 AND co_campo = 1647
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2505, 1648, 3.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2505 AND co_campo = 1648
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2506, 2830, 4.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2506 AND co_campo = 2830
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2601, 1582, 1.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2601 AND co_campo = 1582
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2602, 1592, 2.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2602 AND co_campo = 1592
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2603, 1595, 3.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2603 AND co_campo = 1595
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2604, 1597, 4.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2604 AND co_campo = 1597
);
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2605, 1600, 5.0, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = 2605 AND co_campo = 1600
);

INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 876, 1079, 4094, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 876 AND co_averbacao = 1079
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 877, 1080, 4962, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 877 AND co_averbacao = 1080
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 878, 1083, 4963, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 878 AND co_averbacao = 1083
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 879, 1084, 4964, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 879 AND co_averbacao = 1084
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 880, 1079, 4965, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 880 AND co_averbacao = 1079
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 881, 1080, 4965, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 881 AND co_averbacao = 1080
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 882, 1083, 4965, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 882 AND co_averbacao = 1083
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 883, 1084, 4965, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 883 AND co_averbacao = 1084
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 884, 1085, 4966, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 884 AND co_averbacao = 1085
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 885, 1088, 4967, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 885 AND co_averbacao = 1088
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 886, 1085, 4968, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 886 AND co_averbacao = 1085
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 887, 1088, 4968, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 887 AND co_averbacao = 1088
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 888, 1079, 4969, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 888 AND co_averbacao = 1079
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 889, 1080, 4969, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 889 AND co_averbacao = 1080
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 890, 1083, 4969, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 890 AND co_averbacao = 1083
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 891, 1084, 4969, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 891 AND co_averbacao = 1084
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 892, 1085, 4969, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 892 AND co_averbacao = 1085
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 893, 1088, 4969, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 893 AND co_averbacao = 1088
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 894, 1111, 4970, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 894 AND co_averbacao = 1111
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 895, 1112, 4971, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 895 AND co_averbacao = 1112
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 896, 1113, 4972, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 896 AND co_averbacao = 1113
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 897, 1111, 4973, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 897 AND co_averbacao = 1111
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 898, 1112, 4973, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 898 AND co_averbacao = 1112
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 899, 1113, 4973, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 899 AND co_averbacao = 1113
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 900, 1079, 4974, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 900 AND co_averbacao = 1079
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 901, 1080, 4974, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 901 AND co_averbacao = 1080
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 902, 1083, 4974, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 902 AND co_averbacao = 1083
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 903, 1084, 4974, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 903 AND co_averbacao = 1084
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 904, 1111, 4974, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 904 AND co_averbacao = 1111
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 905, 1112, 4974, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 905 AND co_averbacao = 1112
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 906, 1113, 4974, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 906 AND co_averbacao = 1113
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 907, 1079, 4975, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 907 AND co_averbacao = 1079
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 908, 1080, 4975, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 908 AND co_averbacao = 1080
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 909, 1083, 4975, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 909 AND co_averbacao = 1083
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 910, 1084, 4975, 2830, 'SOMA', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 910 AND co_averbacao = 1084
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 911, 1111, 4975, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 911 AND co_averbacao = 1111
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 912, 1112, 4975, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 912 AND co_averbacao = 1112
);
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 913, 1113, 4975, 2830, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = 913 AND co_averbacao = 1113
);
