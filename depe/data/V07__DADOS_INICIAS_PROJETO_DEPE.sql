
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1567, 'Sistema de Origem', 'NOME_ARQUIVO', 'Código do sistema de origem das informaçöes, mantido no instituoional com Sistemas de Origem.', 4.0, 
1.0, 'PADRAO', True, 
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
True, 'None', 
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
True, 'None', 
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
True, 'None', 
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
True, 'None', 
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
True, 'None', 
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
True, 'None', 
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
True, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
True, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
True, 'None', 
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
True, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
False, 'None', 
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
True, 'None', 
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
False, 'None', 
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
False, 'None', 
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
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 2808, 1622, 3.0, 'PREENCHIMENTO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 2808 AND co_campo = 1622
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 2809, 1622, 9.0, 'PREENCHIMENTO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 2809 AND co_campo = 1622
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4420, 4301, 7.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4420 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4421, 4301, 3.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4421 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4422, 4301, 4.0, 'OPCIONAL', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4422 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4423, 4301, 7.0, 'OPCIONAL', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4423 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4424, 4301, 1.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4424 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4425, 4301, 6.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4425 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4426, 4301, 4.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4426 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4427, 4301, 5.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4427 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4428, 4301, 7.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4428 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4429, 4301, 3.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4429 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4430, 4301, 4.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4430 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4431, 4301, 5.0, 'OBRIGATORIO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4431 AND co_campo = 4301
);
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao)
SELECT 4432, 4301, 6.0, 'PROIBIDO', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = 4432 AND co_campo = 4301
);
