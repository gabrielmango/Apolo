
-- Sistema de Origem
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1567, 'Sistema de Origem', 'NOME_ARQUIVO', 
'Código do sistema de origem das informaçöes, mantido no instituoional com Sistemas de Origem.', 4.0, 1.0, 
'PADRAO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'e1c8b998-5cf8-4a21-946c-8eebcd02f8fb', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1567 
AND no_campo = 'Sistema de Origem');
        
-- Exercício Financeiro
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1568, 'Exercício Financeiro', 'NOME_ARQUIVO', 
'Ano corrente da execuçäo da despesa de pessoal.', 1.0, 2.0, 
'REFERENCIA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'615a8867-0b84-430d-8139-0e3dd6ea801a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1568 
AND no_campo = 'Exercício Financeiro');
        
-- Mês de Competência
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1569, 'Mês de Competência', 'NOME_ARQUIVO', 
'Mês de competência da despesa de pessoal.', 2.0, 3.0, 
'REFERENCIA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'14d2c89f-ca59-4355-b03e-6e4e5c792d21', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1569 
AND no_campo = 'Mês de Competência');
        
-- Tipo de Processamento
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1570, 'Tipo de Processamento', 'NOME_ARQUIVO', 
'Código do tipo de processamento, conforme campo do Header do Arquivo.', 2.0, 4.0, 
'REFERENCIA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'08dfde5f-119a-4b58-a3a7-32a2513c6a62', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1570 
AND no_campo = 'Tipo de Processamento');
        
-- Tipo de Folha
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1571, 'Tipo de Folha', 'NOME_ARQUIVO', 
'ldentifica outros tipos diferentes e permitidos de folha de pagamento  Tipo para o mesmo tipo de folha.', 2.0, 5.0, 
'REFERENCIA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'8baa884c-2246-4571-9eb6-0bd89996a9c8', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1571 
AND no_campo = 'Tipo de Folha');
        
-- Número do Arquivo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1572, 'Número do Arquivo', 'NOME_ARQUIVO', 
'Número do arquivo, criado e controlado pelo responsável pela geraçåo do arquivo de despesa de pessoal. Nåo pode ser repetido', 10.0, 6.0, 
'REFERENCIA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'6ee4440c-3dd7-43e6-96d8-4aef5d42b650', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1572 
AND no_campo = 'Número do Arquivo');
        
-- Tipo de Registro
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1573, 'Tipo de Registro', 'HEADER_ARQUIVO', 
'ldentifica o tipo de registro no arquivo.', 1.0, 1.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'12cc65b0-94e1-4b61-97d3-b8eb5c4a589d', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1573 
AND no_campo = 'Tipo de Registro');
        
-- Tipo de Processamento
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1574, 'Tipo de Processamento', 'HEADER_ARQUIVO', 
'lndica a funçäo do arquivo para execuçåo no sistema.', 2.0, 2.0, 
'SELECAO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'31756ed4-0f51-4759-9252-9a3d86cc8066', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1574 
AND no_campo = 'Tipo de Processamento');
        
-- Número de Lote
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1575, 'Número de Lote', 'HEADER_ARQUIVO', 
'Número sequencial para identificar univocamente um lote de informaçäo.', 4.0, 3.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'e6db0efc-97af-4f7e-a287-0e5524ff138d', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1575 
AND no_campo = 'Número de Lote');
        
-- Exercício Financeiro
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1576, 'Exercício Financeiro', 'HEADER_ARQUIVO', 
'Ano corrente da apropriação da despesa de pessoal.', 4.0, 4.0, 
'NUMERICO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'8e50f7b0-8c55-44cf-bcc2-d6a5221f76c2', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1576 
AND no_campo = 'Exercício Financeiro');
        
-- Ano de Competência
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1577, 'Ano de Competência', 'HEADER_ARQUIVO', 
'Ano de competência da despesa de pessoal.', 4.0, 5.0, 
'NUMERICO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'08e34d0f-f963-40c8-b55b-1d659a6bdc30', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1577 
AND no_campo = 'Ano de Competência');
        
-- Mês de Competência
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1578, 'Mês de Competência', 'HEADER_ARQUIVO', 
'Mês de competência da despesa de pessoal.', 2.0, 6.0, 
'SELECAO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'7214b4a0-9759-4dcc-8c5f-35a29cb86ff7', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1578 
AND no_campo = 'Mês de Competência');
        
-- Número do Arquivo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1579, 'Número do Arquivo', 'HEADER_ARQUIVO', 
'Número do arquivo, criado e controlado pelo responsável pela geraçäo do arquivo', 10.0, 7.0, 
'NUMERICO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'74a0e372-f97c-4dbf-b0db-8e293bfb9ea7', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1579 
AND no_campo = 'Número do Arquivo');
        
-- Sistema de Origem
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1580, 'Sistema de Origem', 'HEADER_ARQUIVO', 
'Código do sistema de origem das informaçöes.', 4.0, 8.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'53e49fe9-cc1d-4432-a7cc-e4585b8c30e4', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1580 
AND no_campo = 'Sistema de Origem');
        
-- Tipo de registro 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1581, 'Tipo de registro ', 'HEADER_LOTE', 
'Identifica o tipo de registro no arquivo.(Header Lote)', 1.0, 1.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'656c3687-dd96-4f0d-8d4d-1cfbe5a5e5dd', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1581 
AND no_campo = 'Tipo de registro ');
        
-- Número do lote 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1582, 'Número do lote ', 'HEADER_LOTE', 
'Número sequencial para identificar univocamente um lote de informação. ', 4.0, 2.0, 
'SEQUENCIAL', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'fb80ad43-57e7-4340-b09f-ef4f500110df', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1582 
AND no_campo = 'Número do lote ');
        
-- Indicador do Tipo de Folha
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1583, 'Indicador do Tipo de Folha', 'HEADER_ARQUIVO', 
'ldentificaçåo da caracterfstica da folha de pessoal.', 2.0, 9.0, 
'SELECAO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'3827087e-3569-4fea-b0ae-c04cef59f5c8', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1583 
AND no_campo = 'Indicador do Tipo de Folha');
        
-- Unidade Orçamentária – Órgão Executor 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1584, 'Unidade Orçamentária – Órgão Executor ', 'HEADER_LOTE', 
'Código do órgão executor cadastrado no header do arquivo ', 5.0, 3.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'a307bd51-690d-4d98-a3e0-e2c8f9d7353a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1584 
AND no_campo = 'Unidade Orçamentária – Órgão Executor ');
        
-- Tipo de registro
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1585, 'Tipo de registro', 'TRAILER_LOTE', 
'Código do identificador de tipo de registro', 1.0, 1.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'89aae697-f001-4263-a0e9-b18806626c50', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1585 
AND no_campo = 'Tipo de registro');
        
-- Data de Geração do Arquivo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1586, 'Data de Geração do Arquivo', 'HEADER_ARQUIVO', 
'Data de criação do arquivo pelo sistema de origem no formato DDMMAAAA', 8.0, 10.0, 
'DATA_SISTEMA', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'8021976e-778f-4a08-88c2-269dc42d6a76', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1586 
AND no_campo = 'Data de Geração do Arquivo');
        
-- Hora de Geração do Arquivo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1587, 'Hora de Geração do Arquivo', 'HEADER_ARQUIVO', 
'Hora de geraçåo do arquivo pelo sistema de origem no formato HHMMSS', 6.0, 11.0, 
'HORA_SISTEMA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'8fe8a1c5-26b7-4c26-ad7b-655a68814207', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1587 
AND no_campo = 'Hora de Geração do Arquivo');
        
-- Número de lote
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1588, 'Número de lote', 'TRAILER_LOTE', 
'Número sequencial que identifica unicamente um lote de informação ', 4.0, 2.0, 
'SEQUENCIAL', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'30e2fd0a-c914-4595-9630-8267908dc5fd', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1588 
AND no_campo = 'Número de lote');
        
-- Número de Escalas de Pagamento
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1589, 'Número de Escalas de Pagamento', 'HEADER_ARQUIVO', 
'Número de escalas de pagamento que seräo realizadas.', 2.0, 12.0, 
'NUMERICO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'bebe19ab-790b-4495-8c10-5111c35d1c64', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1589 
AND no_campo = 'Número de Escalas de Pagamento');
        
-- Número da Escala Sendo Paga
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1590, 'Número da Escala Sendo Paga', 'HEADER_ARQUIVO', 
'Número da escala de pagamento que está sendo paga.', 2.0, 13.0, 
'NUMERICO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'38272613-af21-4dc3-b5ca-1cd4b645f8e4', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1590 
AND no_campo = 'Número da Escala Sendo Paga');
        
-- Número do Arquivo de Apropriação
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1591, 'Número do Arquivo de Apropriação', 'HEADER_ARQUIVO', 
'Número do arquivo de apropriaçäo relacionado ao arquivo sendo enviado', 10.0, 14.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'b479ab3a-18db-49b4-a4b4-d7d50c8f87ff', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1591 
AND no_campo = 'Número do Arquivo de Apropriação');
        
-- Quantidade de registros do lote
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1592, 'Quantidade de registros do lote', 'TRAILER_LOTE', 
'Quantidade total de registros pertencentes ao lote ', 10.0, 3.0, 
'QUANTIDADE_LINHA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'1e683ec3-90f5-4499-a683-94b4a46c6d6b', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1592 
AND no_campo = 'Quantidade de registros do lote');
        
-- Justificativa
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1593, 'Justificativa', 'HEADER_ARQUIVO', 
'Justificativa padrão para o arquivo', 30.0, 14.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'dd81093c-f7c4-42f9-bceb-29bbe561ba94', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1593 
AND no_campo = 'Justificativa');
        
-- Tipo de Registro
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1594, 'Tipo de Registro', 'TRAILER_ARQUIVO', 
'ldentifica o tipo de registro no arquivo.', 1.0, 1.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'e82281e3-d8b7-4ad9-a874-8c544a5df833', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1594 
AND no_campo = 'Tipo de Registro');
        
-- Valor líquido por UO - Servidor
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1595, 'Valor líquido por UO - Servidor', 'TRAILER_LOTE', 
'Somatório do valor líquido por UO - Servidor (verba 1 + verba 3 - verba 2 (TIPO 10 - IR) - verba 4) ', 15.0, 4.0, 
'CALCULO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'50cd18ab-3ed6-425f-a6ab-49cc2d731535', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1595 
AND no_campo = 'Valor líquido por UO - Servidor');
        
-- Número do Lote
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1596, 'Número do Lote', 'TRAILER_ARQUIVO', 
'Ntlmero sequencial para identificar univocamente um lote de informaçäo.', 4.0, 2.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'39ff7002-1796-4ecd-b800-e3653f7f07d4', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1596 
AND no_campo = 'Número do Lote');
        
-- Valor líquido por UO - Patronal
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1597, 'Valor líquido por UO - Patronal', 'TRAILER_LOTE', 
'Somatório do valor líquido por UO - Patronal (verba 6 - verba 7) ', 15.0, 5.0, 
'CALCULO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'93533162-7c91-40cc-af8b-c0bfc9cc02bd', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1597 
AND no_campo = 'Valor líquido por UO - Patronal');
        
-- Quantidade de Lotes
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1598, 'Quantidade de Lotes', 'TRAILER_ARQUIVO', 
'Quantidade de lotes enviados no arquivo', 4.0, 3.0, 
'QUANTIDADE_LOTE', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'405779e1-e058-4d01-a167-dbf11f750e0a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1598 
AND no_campo = 'Quantidade de Lotes');
        
-- Quantidade de Registros do Arquivo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1599, 'Quantidade de Registros do Arquivo', 'TRAILER_ARQUIVO', 
'Número total de registros pertencentes ao arquivo.', 10.0, 4.0, 
'QUANTIDADE_LINHA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'0712e14a-6fe5-4f95-bbfb-cda5f872312c', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1599 
AND no_campo = 'Quantidade de Registros do Arquivo');
        
-- Valor líquido por UO - Retenção
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1600, 'Valor líquido por UO - Retenção', 'TRAILER_LOTE', 
'Somatório do valor líquido por UO - retenção (verba 2) ', 15.0, 6.0, 
'CALCULO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'114bc4d9-334d-40fb-9fd5-1b25d34c340e', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1600 
AND no_campo = 'Valor líquido por UO - Retenção');
        
-- Tipo de registro 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1601, 'Tipo de registro ', 'CONTEUDO_LOTE', 
'Código do identificador de tipo de registro ', 1.0, 1.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'f491ee08-3131-427c-af8d-d8718e2fb822', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1601 
AND no_campo = 'Tipo de registro ');
        
-- Número de lote 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1602, 'Número de lote ', 'CONTEUDO_LOTE', 
'Número sequencial para identificar univocamente um lote de informação. Criado e controlado paelo responsável pela geração do arquivo. ', 4.0, 2.0, 
'REFERENCIA', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'988804a2-20de-4895-a3f5-95873e20df54', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1602 
AND no_campo = 'Número de lote ');
        
-- Identificador do tipo de despesa de pessoal 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1609, 'Identificador do tipo de despesa de pessoal ', 'CONTEUDO_LOTE', 
'Identificação da origem da despesa para detalhamento da execução ', 2.0, 3.0, 
'SELECAO', True, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'9fe4f83b-70a5-49d2-9f89-0ae265192be1', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1609 
AND no_campo = 'Identificador do tipo de despesa de pessoal ');
        
-- Tipo de Retenção 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1615, 'Tipo de Retenção ', 'CONTEUDO_LOTE', 
'Indica a origem da retenção prevista para a folha de pagamento ', 4.0, 5.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'504ddff6-9b9f-4918-8e6a-b4385def992a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1615 
AND no_campo = 'Tipo de Retenção ');
        
-- Função 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1622, 'Função ', 'CONTEUDO_LOTE', 
'Código da função ', 2.0, 6.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'4d5d1207-782a-4cfd-a5e7-9ebad472d1f5', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1622 
AND no_campo = 'Função ');
        
-- Subfunção 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1631, 'Subfunção ', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção da Subfunção do lote ', 3.0, 7.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'5c9f9bda-b532-4adf-a1f5-e55c0fe27732', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1631 
AND no_campo = 'Subfunção ');
        
-- Programa 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1632, 'Programa ', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção do Programa do lote ', 3.0, 8.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'757538e5-fc7d-42f5-b9d9-499e0ffcc8b2', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1632 
AND no_campo = 'Programa ');
        
-- Identificador de Projeto / Atividade
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1635, 'Identificador de Projeto / Atividade', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção do Identificador de Projeto / Atividade do lote', 1.0, 9.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'1a6d3ebf-c9c3-4ba1-b6cf-f142f5eaffd3', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1635 
AND no_campo = 'Identificador de Projeto / Atividade');
        
-- Projeto / Atividade 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1636, 'Projeto / Atividade ', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção do Projeto / Atividade do lote ', 3.0, 10.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'4c00d85c-eb87-4f0a-a267-c2bf10d8c79a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1636 
AND no_campo = 'Projeto / Atividade ');
        
-- Subprojeto / Subatividade 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1637, 'Subprojeto / Subatividade ', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção do Subprojeto / Subatividade do lote ', 4.0, 11.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'56837956-83ec-489f-9862-ce312cc6c8d7', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1637 
AND no_campo = 'Subprojeto / Subatividade ');
        
-- Categoria Econômica 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1638, 'Categoria Econômica ', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção da Categoria Econômica do lote ', 1.0, 12.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'5c5b390e-0378-4aaf-99da-6ae6ad3e6564', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1638 
AND no_campo = 'Categoria Econômica ');
        
-- Grupo de despesa
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1641, 'Grupo de despesa', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção do Grupo de Despesa da linha ', 1.0, 13.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'263f85da-4f69-4c15-9b4d-1f274e3bd140', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1641 
AND no_campo = 'Grupo de despesa');
        
-- Modalidade de Aplicação 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1646, 'Modalidade de Aplicação ', 'CONTEUDO_LOTE', 
'Campo destinado para a seleção da Modalidade de Aplicação do lote ', 2.0, 14.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'5d675a3c-c3cf-4c1d-a7bc-7f6a2eb07973', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1646 
AND no_campo = 'Modalidade de Aplicação ');
        
-- Elemento Despesa 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1647, 'Elemento Despesa ', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção do Item de Despesa da linha ', 3.0, 15.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'd65f55b2-06b4-4d9c-953f-ccb65b4ef3f8', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1647 
AND no_campo = 'Elemento Despesa ');
        
-- Item de Despesa 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1648, 'Item de Despesa ', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção do Item de Despesa da linha ', 3.0, 16.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'1199d868-7696-42b2-8761-f65c5559e227', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1648 
AND no_campo = 'Item de Despesa ');
        
-- IAG
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1649, 'IAG', 'CONTEUDO_LOTE', 
'Campo destinado para seleção IAG do arquivo. ', 2.0, 17.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'adee109a-dc40-4c15-9a2e-f7c58d6e29e1', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1649 
AND no_campo = 'IAG');
        
-- Grupo da Fonte 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1650, 'Grupo da Fonte ', 'CONTEUDO_LOTE', 
'Campo destinado para a seleção do Grupo de Fonte do lote ', 2.0, 18.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'85a431be-7006-4dce-b00d-320297f7b2d9', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1650 
AND no_campo = 'Grupo da Fonte ');
        
-- Fonte de Recurso 
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1651, 'Fonte de Recurso ', 'CONTEUDO_LOTE', 
'Campo destinado para a seleção da Fonte de Recurso do lote ', 6.0, 19.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'99b9de96-3fa7-410e-a048-956039e5f25e', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1651 
AND no_campo = 'Fonte de Recurso ');
        
-- IPU
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 1654, 'IPU', 'CONTEUDO_LOTE', 
'Campo destinado para a inserção do IPU da linha', 2.0, 20.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'1b831c5f-970f-48ec-a47f-87acce9809cf', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 1654 
AND no_campo = 'IPU');
        
-- Elemento-item de origem
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2821, 'Elemento-item de origem', 'CONTEUDO_LOTE', 
'Elemento de origem para DEA (despesa de exercício anterior)', 3.0, 21.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'4ef46be9-2127-4802-8f61-6df9e76ae1fa', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2821 
AND no_campo = 'Elemento-item de origem');
        
-- Item Origem
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2822, 'Item Origem', 'CONTEUDO_LOTE', 
'Item de origem para DEA (despesa de exercicio anterior)', 3.0, 22.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'e7f6179e-9c0c-493f-8ab2-3ff9eb59bb2c', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2822 
AND no_campo = 'Item Origem');
        
-- Tipo de inscrição do credor da execução de despesa de pessoal
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2823, 'Tipo de inscrição do credor da execução de despesa de pessoal', 'CONTEUDO_LOTE', 
'Identificador do tipo de inscrição do credor', 1.0, 23.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'e860f804-6b77-4c07-9684-2a3c544316d1', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2823 
AND no_campo = 'Tipo de inscrição do credor da execução de despesa de pessoal');
        
-- Credor da execução de despesa de pessoal
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2824, 'Credor da execução de despesa de pessoal', 'CONTEUDO_LOTE', 
'CAPF de apropriação da despesa de pessoal', 14.0, 24.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'7160874f-3136-4e11-80d5-63cd9c7f4255', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2824 
AND no_campo = 'Credor da execução de despesa de pessoal');
        
-- Tipo de inscrição do credor da retenção / restituição / patronal
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2825, 'Tipo de inscrição do credor da retenção / restituição / patronal', 'CONTEUDO_LOTE', 
'Identificador do tipo de inscrição credor', 1.0, 25.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'4835a2f8-3cdd-4421-b8ca-b292c695cd6d', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2825 
AND no_campo = 'Tipo de inscrição do credor da retenção / restituição / patronal');
        
-- Credor da retenção / restituição / patronal
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2826, 'Credor da retenção / restituição / patronal', 'CONTEUDO_LOTE', 
'CNPJ do credor da retenção restituição patronal', 14.0, 26.0, 
'NUMERICO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'12391444-1512-4e24-96d6-22bf570e10fd', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2826 
AND no_campo = 'Credor da retenção / restituição / patronal');
        
-- Código de receita
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2827, 'Código de receita', 'CONTEUDO_LOTE', 
'Código da receita previdenciária', 6.0, 27.0, 
'NUMERICO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'5aa8357c-5fba-4d15-8d60-a019802602ff', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2827 
AND no_campo = 'Código de receita');
        
-- Ano de referência da retenção / patronal / Despesa Bruta Servidor
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2828, 'Ano de referência da retenção / patronal / Despesa Bruta Servidor', 'CONTEUDO_LOTE', 
'Ano de referência da retenção / patronal / Despesa Bruta Servidor', 4.0, 28.0, 
'NUMERICO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'53952a51-903b-4f9e-95db-1dac7dbc7ffb', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2828 
AND no_campo = 'Ano de referência da retenção / patronal / Despesa Bruta Servidor');
        
-- Mês de referência da retenção / patronal / Despesa Bruta Servidor
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2829, 'Mês de referência da retenção / patronal / Despesa Bruta Servidor', 'CONTEUDO_LOTE', 
'Mês de referência da retenção / patronal / Despesa Bruta Servidor', 2.0, 29.0, 
'NUMERICO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'41b90449-4cbc-4381-9d33-447496bf7d9a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2829 
AND no_campo = 'Mês de referência da retenção / patronal / Despesa Bruta Servidor');
        
-- Valor
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2830, 'Valor', 'CONTEUDO_LOTE', 
'Valor a ser apropriado/retido', 15.0, 30.0, 
'MONETARIO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'8b06bf6f-8fe6-4ef1-aea0-ca4323d8879a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2830 
AND no_campo = 'Valor');
        
-- Centro de custo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2837, 'Centro de custo', 'CONTEUDO_LOTE', 
'Código do centro de custo', 7.0, 31.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'2fd765b3-fd87-424b-8ffd-cebe087c32e1', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2837 
AND no_campo = 'Centro de custo');
        
-- Instrumento Jurídico da Fonte
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2838, 'Instrumento Jurídico da Fonte', 'CONTEUDO_LOTE', 
'Número do instrumento jurídico de entrada da fonte', 10.0, 32.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'ca1eac71-d724-4748-a897-5a17f7feb9b2', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2838 
AND no_campo = 'Instrumento Jurídico da Fonte');
        
-- Instrumento Jurídico do IPU
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2839, 'Instrumento Jurídico do IPU', 'CONTEUDO_LOTE', 
'Número do instrumento jurídico de entrada da procedencia', 10.0, 33.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'ae04d72d-6161-43be-9b6a-42ff9f63c6c1', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2839 
AND no_campo = 'Instrumento Jurídico do IPU');
        
-- Órgão executor da despesa
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2840, 'Órgão executor da despesa', 'CONTEUDO_LOTE', 
'Código do órgão executor da despesa orçamentária a ser eapropriada', 5.0, 34.0, 
'PADRAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'13ef9cc2-0f09-43b4-99d7-13ed06625361', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2840 
AND no_campo = 'Órgão executor da despesa');
        
-- Unidade Orçamentária Beneficiária da Retenção
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2841, 'Unidade Orçamentária Beneficiária da Retenção', 'CONTEUDO_LOTE', 
'Código da unidade Orçamentária Beneficiária da Retenção', 5.0, 35.0, 
'SELECAO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'12d5c8dd-62eb-46e1-8c4e-b326c793bbc4', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2841 
AND no_campo = 'Unidade Orçamentária Beneficiária da Retenção');
        
-- Unidade Financeira do gasto
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 2842, 'Unidade Financeira do gasto', 'CONTEUDO_LOTE', 
'Código da unidade orçamentaria financeira do gasto', 5.0, 36.0, 
'NUMERICO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'dbf2bbf6-4705-4d25-814f-6bd0c6b140e8', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 2842 
AND no_campo = 'Unidade Financeira do gasto');
        
-- Proventos Ativos
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4094, 'Proventos Ativos', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Proventos ativo".', 99.0, 1.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'2356d79a-a649-429c-b68f-10fb7e9e4353', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4094 
AND no_campo = 'Proventos Ativos');
        
-- Identificador de Tipo de Verba
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4301, 'Identificador de Tipo de Verba', 'CONTEUDO_LOTE', 
'Identificador de vantagens e descontos', 2.0, 4.0, 
'SELECAO', False, 
True, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'09bd2d64-a2c5-4088-8423-3f3268a18225', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4301 
AND no_campo = 'Identificador de Tipo de Verba');
        
-- Ano de referência da DEA
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4575, 'Ano de referência da DEA', 'CONTEUDO_LOTE', 
'Ano de referência da DEA', 4.0, 37.0, 
'NUMERICO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'de132ff2-774d-49ab-a606-25ee72831d69', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4575 
AND no_campo = 'Ano de referência da DEA');
        
-- Mês de referência da DEA
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4576, 'Mês de referência da DEA', 'CONTEUDO_LOTE', 
'Mês de referência da DEA', 2.0, 38.0, 
'NUMERICO', False, 
False, 'None', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'8c64ea21-4e6d-4852-989e-407f06080c93', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4576 
AND no_campo = 'Mês de referência da DEA');
        
-- Proventos Inativos
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4962, 'Proventos Inativos', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Proventos inativo".', 99.0, 2.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'57109c68-c53d-4748-8aaa-8485c1a819ee', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4962 
AND no_campo = 'Proventos Inativos');
        
-- Restituição ao Servidor - Ativo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4963, 'Restituição ao Servidor - Ativo', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Restituição ao servidor - Ativo".', 99.0, 3.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'4ef3a4f0-b3c2-4a62-a56a-928f95d2a269', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4963 
AND no_campo = 'Restituição ao Servidor - Ativo');
        
-- Restituição ao Servidor - Inativo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4964, 'Restituição ao Servidor - Inativo', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Restituição ao servidor - Inativo".', 99.0, 4.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'a5ef06b0-dfbd-4313-ada3-753ea0f61ace', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4964 
AND no_campo = 'Restituição ao Servidor - Inativo');
        
-- Vencimentos e Gratificações
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4965, 'Vencimentos e Gratificações', 'ESPECIFICACAO', 
'[Proventos Ativos] + [Proventos Inativos] + [Restituição ao Servidor – Ativo] + [Restituição ao Servidor – Inativo]', 99.0, 5.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'abfa7407-0ec8-4f5f-a8e6-8ff1b2e4dade', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4965 
AND no_campo = 'Vencimentos e Gratificações');
        
-- Patronal - Ativo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4966, 'Patronal - Ativo', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Patronal - Ativo".', 99.0, 6.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'761de29b-1534-4c5f-880c-b38bf308f62b', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4966 
AND no_campo = 'Patronal - Ativo');
        
-- Patronal - Inativo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4967, 'Patronal - Inativo', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Patronal - Inativo".', 99.0, 7.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'3679b594-5a3a-48ec-85b6-49815d99a25a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4967 
AND no_campo = 'Patronal - Inativo');
        
-- Obrigações Patronais
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4968, 'Obrigações Patronais', 'ESPECIFICACAO', 
'[Patronal – Ativo] + [Patronal – Inativo]', 99.0, 8.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'e2216fdc-c0da-418a-b6d2-1d75ed8394bc', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4968 
AND no_campo = 'Obrigações Patronais');
        
-- Total Orçamentário
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4969, 'Total Orçamentário', 'ESPECIFICACAO', 
'[Vencimentos e Gratificações] + [Obrigações Patronais]', 99.0, 9.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'60dd6670-8fc2-47a4-b1e0-5be9c4e55053', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4969 
AND no_campo = 'Total Orçamentário');
        
-- Consignações - Ativo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4970, 'Consignações - Ativo', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Consignações - Ativo".', 99.0, 10.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'1fdc798e-c021-4bb8-be63-d4afd00270b6', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4970 
AND no_campo = 'Consignações - Ativo');
        
-- Restituição ao Estado - Ativo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4971, 'Restituição ao Estado - Ativo', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com o tipo de averbação "Restituição ao Estado - Ativo".', 99.0, 11.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'd27e3488-b219-4622-b91e-a028efadbac7', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4971 
AND no_campo = 'Restituição ao Estado - Ativo');
        
-- Consignações - Inativo
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4972, 'Consignações - Inativo', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes com tipo de averbação "Consignações - Inativo".', 99.0, 12.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'388198a3-6403-4bc7-9a49-bd0a4045c9b2', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4972 
AND no_campo = 'Consignações - Inativo');
        
-- Consignações
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4973, 'Consignações', 'ESPECIFICACAO', 
'[Consignações – Ativo] + [Restituição ao Estado – Ativo] + [Consignações – Inativo]', 99.0, 13.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'8702d43e-8a09-40a5-abeb-8f5f02e3df79', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4973 
AND no_campo = 'Consignações');
        
-- Total Líquido Antes do IRRF
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4974, 'Total Líquido Antes do IRRF', 'ESPECIFICACAO', 
'[Vencimentos e Gratificações] – [Consignações]', 99.0, 14.0, 
'CALCULO_AVERBACAO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'14fe76cb-ace2-4a7b-a20e-0503635a460a', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4974 
AND no_campo = 'Total Líquido Antes do IRRF');
        
-- Valor Líquido Final
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4975, 'Valor Líquido Final', 'ESPECIFICACAO', 
'[Total Líquido Antes do IRRF] – [IRRF Ativo - IRRF Inativo]', 99.0, 15.0, 
'CALCULO_AVERBACAO', False, 
False, 'SUBTRACAO', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'db17a03c-a7ab-482e-a684-2dffd6e3b40e', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4975 
AND no_campo = 'Valor Líquido Final');
        
-- 001 – (OLP) Pensão alimento (Ativo + Inativo)
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 4976, '001 – (OLP) Pensão alimento (Ativo + Inativo)', 'ESPECIFICACAO', 
'Soma dos valores lançados nas linhas de lotes  que possuem o tipo de retenção “0001 - (OLP) Pensão alimento”', 99.0, 16.0, 
'CALCULO', False, 
False, 'NENHUM', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'0ed1710b-2581-40f0-a5c2-a30606b0c423', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = 4976 
AND no_campo = '001 – (OLP) Pensão alimento (Ativo + Inativo)');
        