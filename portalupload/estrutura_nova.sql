DROP SCHEMA IF EXISTS upload;
CREATE SCHEMA IF NOT EXISTS upload;

CREATE SEQUENCE upload.sq_anexo
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_anexohist_coseqah
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_boletim_coseqb
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_boletimhist_coseqbh
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_categorareaatuhis_coseqcaah
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_categoriaareaatuac_coseqcaa
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_corregedoria_coseqc
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_corregedoriahist_coseqch
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_revista_coseqr
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_revistahist_coseqrh
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_tipodocumento_coseqtd
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE upload.sq_tipodocumentohist_coseqtdh
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE TABLE upload.tb_boletim (
	co_seq_boletim int8 DEFAULT nextval('upload.sq_boletim_coseqb'::text::regclass) NOT NULL,
	nu_ano int8 NOT NULL,
	nu_boletim int4 NOT NULL,
	nu_numero int4 NULL,
	dt_publicacao timestamp NULL,
	st_pagina_inicial bool DEFAULT false NULL,
	st_ativo bool NOT NULL,
	dh_criacao timestamp NULL,
	dh_alteracao timestamp DEFAULT now() NULL,
	tp_operacao varchar(255) NOT NULL,
	nu_versao numeric(10) NOT NULL,
	co_uuid varchar(255) NOT NULL,
	co_uuid_1 varchar(255) NULL,
	sg_projeto_modificador varchar(255) NULL,
	sg_acao_modificadora varchar(255) NULL,
	no_end_point_modificador varchar(255) NULL,
	CONSTRAINT pk_boletim PRIMARY KEY (co_seq_boletim)
);

CREATE TABLE upload.tb_categoria_area_atuac (
	co_seq_categoria_area_atuac int8 DEFAULT nextval('upload.sq_categoriaareaatuac_coseqcaa'::regclass) NOT NULL,
	no_categoria_area_atuac varchar(255) NOT NULL,
	ds_categoria_area_atuac varchar(500) NOT NULL,
	sg_projeto_modificador varchar(100) NOT NULL,
	sg_acao_modificadora varchar(100) NOT NULL,
	no_end_point_modificador varchar(255) NOT NULL,
	st_ativo bool NOT NULL,
	dh_criacao timestamp NOT NULL,
	dh_alteracao timestamp NULL,
	tp_operacao varchar(255) NOT NULL,
	nu_versao numeric(10) NOT NULL,
	co_uuid varchar(255) NOT NULL,
	co_uuid_1 varchar(255) NOT NULL,
	CONSTRAINT pk_categoriaareaatuac PRIMARY KEY (co_seq_categoria_area_atuac),
	CONSTRAINT uk_categorareaatu_dscategoria UNIQUE (no_categoria_area_atuac)
);

CREATE TABLE upload.tb_corregedoria (
	co_seq_corregedoria int8 DEFAULT nextval('upload.sq_corregedoria_coseqc'::text::regclass) NOT NULL,
	ds_categoria varchar(255) NOT NULL,
	nu_numero int4 NULL,
	nu_ano int8 NULL,
	st_ativo bool NOT NULL,
	dh_criacao timestamp NULL,
	dh_alteracao timestamp DEFAULT now() NULL,
	tp_operacao varchar(255) NOT NULL,
	nu_versao numeric(10) NOT NULL,
	co_uuid varchar(255) NOT NULL,
	co_uuid_1 varchar(255) NULL,
	sg_projeto_modificador varchar(255) NULL,
	sg_acao_modificadora varchar(255) NULL,
	no_end_point_modificador varchar(255) NULL,
	CONSTRAINT pk_corregedoria PRIMARY KEY (co_seq_corregedoria)
);

CREATE TABLE upload.tb_revista (
	co_seq_revista int8 DEFAULT nextval('upload.sq_revista_coseqr'::text::regclass) NOT NULL,
	nu_ano int8 NOT NULL,
	nu_numero int4 NOT NULL,
	st_pagina_inicial bool DEFAULT false NULL,
	st_ativo bool NOT NULL,
	dh_criacao timestamp NULL,
	dh_alteracao timestamp DEFAULT now() NULL,
	tp_operacao varchar(255) NOT NULL,
	nu_versao numeric(10) NOT NULL,
	co_uuid varchar(255) NOT NULL,
	co_uuid_1 varchar(255) NULL,
	sg_projeto_modificador varchar(255) NULL,
	sg_acao_modificadora varchar(255) NULL,
	no_end_point_modificador varchar(255) NULL,
	CONSTRAINT pk_revista PRIMARY KEY (co_seq_revista)
);

CREATE TABLE upload.tb_tipo_documento (
	co_seq_tipo_documento int8 DEFAULT nextval('upload.sq_tipodocumento_coseqtd'::regclass) NOT NULL,
	tp_documento varchar(255) NOT NULL,
	ds_tipo_documento varchar(500) NOT NULL,
	sg_projeto_modificador varchar(100) NOT NULL,
	sg_acao_modificadora varchar(100) NOT NULL,
	no_end_point_modificador varchar(255) NOT NULL,
	st_ativo bool NOT NULL,
	dh_criacao timestamp NOT NULL,
	dh_alteracao timestamp NULL,
	tp_operacao varchar(255) NOT NULL,
	nu_versao numeric(10) NOT NULL,
	co_uuid varchar(255) NOT NULL,
	co_uuid_1 varchar(255) NOT NULL,
	CONSTRAINT pk_tipodocumento PRIMARY KEY (co_seq_tipo_documento),
	CONSTRAINT uk_tipodocumento_dstipodocum UNIQUE (tp_documento)
);

CREATE TABLE upload.th_boletim_hist (
	co_seq_boletim_hist int8 DEFAULT nextval('upload.sq_boletimhist_coseqbh'::text::regclass) NOT NULL,
	co_seq_boletim int8 NULL,
	nu_ano int8 NULL,
	nu_boletim int4 NULL,
	nu_numero int4 NULL,
	dt_publicacao timestamp NULL,
	st_pagina_inicial bool NULL,
	st_ativo bool NULL,
	dh_criacao timestamp NULL,
	dh_alteracao timestamp NULL,
	tp_operacao varchar(255) NULL,
	nu_versao numeric(10) NULL,
	co_uuid varchar(255) NULL,
	co_uuid_1 varchar(255) NULL,
	dh_inicio_hist timestamp NULL,
	dh_fim_hist timestamp NULL,
	sg_projeto_modificador varchar(255) NULL,
	sg_acao_modificadora varchar(255) NULL,
	no_end_point_modificador varchar(255) NULL,
	CONSTRAINT pk_boletimhist PRIMARY KEY (co_seq_boletim_hist)
);

CREATE TABLE upload.th_categoria_area_atuac_hist (
	co_seq_categoria_area_atu_hist int8 DEFAULT nextval('upload.sq_categorareaatuhis_coseqcaah'::regclass) NOT NULL,
	co_seq_categoria_area_atuac int8 NOT NULL,
	no_categoria_area_atuac varchar(255) NOT NULL,
	ds_categoria_area_atuac varchar(500) NOT NULL,
	sg_projeto_modificador varchar(100) NOT NULL,
	sg_acao_modificadora varchar(100) NOT NULL,
	no_end_point_modificador varchar(255) NOT NULL,
	st_ativo bool NOT NULL,
	dh_criacao timestamp NOT NULL,
	dh_alteracao timestamp NULL,
	tp_operacao varchar(255) NOT NULL,
	nu_versao numeric(10) NOT NULL,
	co_uuid varchar(255) NOT NULL,
	co_uuid_1 varchar(255) NOT NULL,
	dh_inicio_hist timestamp NOT NULL,
	dh_fim_hist timestamp NULL,
	CONSTRAINT pk_categoriaareaatuachist PRIMARY KEY (co_seq_categoria_area_atu_hist)
);

CREATE TABLE upload.th_corregedoria_hist (
	co_seq_corregedoria_hist int8 DEFAULT nextval('upload.sq_corregedoriahist_coseqch'::text::regclass) NOT NULL,
	co_seq_corregedoria int8 NULL,
	ds_categoria varchar(255) NULL,
	nu_ano int8 NULL,
	nu_corregedoria int4 NULL,
	nu_numero int4 NULL,
	dt_publicacao timestamp NULL,
	st_pagina_inicial bool NULL,
	st_ativo bool NULL,
	dh_criacao timestamp NULL,
	dh_alteracao timestamp NULL,
	tp_operacao varchar(255) NULL,
	nu_versao numeric(10) NULL,
	co_uuid varchar(255) NULL,
	co_uuid_1 varchar(255) NULL,
	dh_inicio_hist timestamp NULL,
	dh_fim_hist timestamp NULL,
	sg_projeto_modificador varchar(255) NULL,
	sg_acao_modificadora varchar(255) NULL,
	no_end_point_modificador varchar(255) NULL,
	CONSTRAINT pk_corregedoriahist PRIMARY KEY (co_seq_corregedoria_hist)
);

CREATE TABLE upload.th_revista_hist (
	co_seq_revista_hist int8 DEFAULT nextval('upload.sq_revistahist_coseqrh'::text::regclass) NOT NULL,
	co_seq_revista int8 NULL,
	nu_ano int8 NULL,
	nu_revista int4 NULL,
	nu_numero int4 NULL,
	dt_publicacao timestamp NULL,
	st_pagina_inicial bool NULL,
	st_ativo bool NULL,
	dh_criacao timestamp NULL,
	dh_alteracao timestamp NULL,
	tp_operacao varchar(255) NULL,
	nu_versao numeric(10) NULL,
	co_uuid varchar(255) NULL,
	co_uuid_1 varchar(255) NULL,
	dh_inicio_hist timestamp NULL,
	dh_fim_hist timestamp NULL,
	sg_projeto_modificador varchar(255) NULL,
	sg_acao_modificadora varchar(255) NULL,
	no_end_point_modificador varchar(255) NULL,
	CONSTRAINT pk_revistahist PRIMARY KEY (co_seq_revista_hist)
);

CREATE TABLE upload.th_tipo_documento_hist (
	co_seq_tipo_documento_hist int8 DEFAULT nextval('upload.sq_tipodocumentohist_coseqtdh'::regclass) NOT NULL,
	co_seq_tipo_documento int8 NOT NULL,
	tp_documento varchar(255) NOT NULL,
	ds_tipo_documento varchar(500) NOT NULL,
	sg_projeto_modificador varchar(100) NOT NULL,
	sg_acao_modificadora varchar(100) NOT NULL,
	no_end_point_modificador varchar(255) NOT NULL,
	st_ativo bool NOT NULL,
	dh_criacao timestamp NOT NULL,
	dh_alteracao timestamp NULL,
	tp_operacao varchar(255) NOT NULL,
	nu_versao numeric(10) NOT NULL,
	co_uuid varchar(255) NOT NULL,
	co_uuid_1 varchar(255) NOT NULL,
	dh_inicio_hist timestamp NOT NULL,
	dh_fim_hist timestamp NULL,
	CONSTRAINT pk_tipodocumentohist PRIMARY KEY (co_seq_tipo_documento_hist)
);

CREATE TABLE upload.th_anexo_hist (
	co_seq_anexo_hist int8 DEFAULT nextval('upload.sq_anexohist_coseqah'::text::regclass) NOT NULL,
	pk_anexo int4 NULL,
	caminho_arquivo varchar NULL,
	nome_arquivo varchar(255) NULL,
	extensao_arquivo varchar NULL,
	area varchar NULL,
	mes varchar(10) NULL,
	tipo varchar(60) NULL,
	descricao varchar(2000) NULL,
	st_registro_ativo bool NULL,
	ano numeric(4) NULL,
	uuid_arquivo varchar(36) NULL,
	assunto varchar(500) NULL,
	complemento varchar(100) NULL,
	ds_uuid_img_capa varchar(255) NULL,
	co_boletim int8 NULL,
	co_corregedoria int8 NULL,
	co_revista int8 NULL,
	st_pagina_inicial bool NULL,
	ds_nome_img_capa varchar(200) NULL,
	ds_extensao_img_capa varchar(255) NULL,
	ds_caminho_img_capa varchar(255) NULL,
	st_ativo bool NULL,
	dh_criacao timestamp NULL,
	dh_alteracao timestamp NULL,
	tp_operacao varchar(255) NULL,
	nu_versao numeric(10) NULL,
	co_uuid varchar(255) NULL,
	co_uuid_1 varchar(255) NULL,
	dh_inicio_hist timestamp NULL,
	dh_fim_hist timestamp NULL,
	co_categoria_area_atuac int8 NULL,
	co_tipo_documento int8 NULL,
	sg_projeto_modificador varchar(255) NULL,
	sg_acao_modificadora varchar(255) NULL,
	no_end_point_modificador varchar(255) NULL,
	CONSTRAINT pk_anexohist PRIMARY KEY (co_seq_anexo_hist)
);

CREATE TABLE upload.tb_anexo (
	pk_anexo int4 DEFAULT nextval('upload.sq_anexo'::text::regclass) NOT NULL,
	caminho_arquivo varchar NOT NULL,
	nome_arquivo varchar(255) NOT NULL,
	extensao_arquivo varchar NOT NULL,
	area varchar NOT NULL,
	mes varchar(10) NULL,
	tipo varchar(60) NULL,
	descricao varchar(2000) NOT NULL,
	st_registro_ativo bool NOT NULL,
	ano numeric(4) NULL,
	uuid_arquivo varchar(36) NULL,
	assunto varchar(500) NULL,
	complemento varchar(100) NULL,
	ds_uuid_img_capa varchar(255) NULL,
	st_pagina_inicial bool DEFAULT false NULL,
	ds_nome_img_capa varchar(200) NULL,
	ds_extensao_img_capa varchar(255) NULL,
	ds_caminho_img_capa varchar(255) NULL,
	co_boletim int8 NULL,
	co_corregedoria int8 NULL,
	co_revista int8 NULL,
	st_ativo bool NULL,
	dh_criacao timestamp NULL,
	dh_alteracao timestamp DEFAULT now() NULL,
	tp_operacao varchar(255) NULL,
	nu_versao numeric(10) DEFAULT 1 NULL,
	co_uuid varchar(255) NULL,
	co_uuid_1 varchar(255) NULL,
	co_categoria_area_atuac int8 NULL,
	co_tipo_documento int8 NULL,
	sg_projeto_modificador varchar(255) NULL,
	sg_acao_modificadora varchar(255) NULL,
	no_end_point_modificador varchar(255) NULL,
	CONSTRAINT pk_anexo PRIMARY KEY (pk_anexo),
	CONSTRAINT fk_boletim_anexo FOREIGN KEY (co_boletim) REFERENCES upload.tb_boletim(co_seq_boletim),
	CONSTRAINT fk_categoriaareaatuac_anexo FOREIGN KEY (co_categoria_area_atuac) REFERENCES upload.tb_categoria_area_atuac(co_seq_categoria_area_atuac),
	CONSTRAINT fk_corregedoria_anexo FOREIGN KEY (co_corregedoria) REFERENCES upload.tb_corregedoria(co_seq_corregedoria),
	CONSTRAINT fk_revista_anexo FOREIGN KEY (co_revista) REFERENCES upload.tb_revista(co_seq_revista),
	CONSTRAINT fk_tipodocumento_anexo FOREIGN KEY (co_tipo_documento) REFERENCES upload.tb_tipo_documento(co_seq_tipo_documento)
);

