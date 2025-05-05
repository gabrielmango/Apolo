-- tb_tipo_documento

INSERT INTO upload.tb_tipo_documento
(tp_documento, ds_tipo_documento, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Documentos Necessários', 'Documentos Necessários', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_tipo_documento WHERE tp_documento = 'Documentos Necessários'
);
INSERT INTO upload.tb_tipo_documento
(tp_documento, ds_tipo_documento, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Documentos Auxiliares', 'Documentos Auxiliares', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_tipo_documento WHERE tp_documento = 'Documentos Auxiliares'
);



-- tb_categoria_area_atuac

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Cível', 'Cível', 'Inclusao Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Cível' and ds_categoria_area_atuac = 'Cível'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Consumidor', 'Consumidor', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Consumidor' and ds_categoria_area_atuac = 'Consumidor'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Criminal', 'Criminal', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Criminal' and ds_categoria_area_atuac = 'Criminal'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Defensoria de Auditoria Militar', 'Defensoria de Auditoria Militar', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Defensoria de Auditoria Militar' and ds_categoria_area_atuac = 'Defensoria de Auditoria Militar'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Defesa da Mulher', 'Defesa da Mulher', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Defesa da Mulher' and ds_categoria_area_atuac = 'Defesa da Mulher'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Direitos da Criança e Adolescente', 'Direitos da Criança e Adolescente', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Direitos da Criança e Adolescente' and ds_categoria_area_atuac = 'Direitos da Criança e Adolescente'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Direitos Humanos', 'Direitos Humanos', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Direitos Humanos' and ds_categoria_area_atuac = 'Direitos Humanos'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Família e Sucessões', 'Família e Sucessões', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Família e Sucessões' and ds_categoria_area_atuac = 'Família e Sucessões'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Pessoa com Deficiência', 'Pessoa com Deficiência', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Pessoa com Deficiência' and ds_categoria_area_atuac = 'Pessoa com Deficiência'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Pessoa Idosa', 'Pessoa Idosa', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Pessoa Idosa' and ds_categoria_area_atuac = 'Pessoa Idosa'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Saúde', 'Saúde', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Saúde' and ds_categoria_area_atuac = 'Saúde'
);

INSERT INTO upload.tb_categoria_area_atuac
(no_categoria_area_atuac, ds_categoria_area_atuac, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, dh_alteracao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT 'Segunda Instância e Tribunais Superiores', 'Segunda Instância e Tribunais Superiores', 'Inclusao_Manual', 'Inclusao_Manual', 'Inclusao_Manual', true, now(), NULL, 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM upload.tb_categoria_area_atuac WHERE no_categoria_area_atuac = 'Segunda Instância e Tribunais Superiores' and ds_categoria_area_atuac = 'Segunda Instância e Tribunais Superiores'
);