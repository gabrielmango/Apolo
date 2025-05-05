DO $$

DECLARE
    -- Declaração de variáveis
    record_table               RECORD;
    schema_name                VARCHAR(255) := CURRENT_SCHEMA;
    sequence_name              VARCHAR(255) := NULL;
    column_with_sequence       VARCHAR(255) := NULL;
    max_table_value            NUMERIC := 0;

BEGIN
    -- Cabeçalho do processo
    RAISE NOTICE '--------------------------------------------------------------------------------------';
    RAISE NOTICE 'INICIANDO PROCESSO PARA ATUALIZAR VALOR DAS SEQUENCES NO ESQUEMA: %', UPPER(schema_name);
    RAISE NOTICE 'Executado em: %', now();
    RAISE NOTICE '--------------------------------------------------------------------------------------';
    RAISE NOTICE '';

    -- Loop para percorrer as tabelas no esquema
    FOR record_table IN
        SELECT DISTINCT(table_name) AS table_name
        FROM information_schema.tables
        WHERE table_schema = schema_name
          AND table_type = 'BASE TABLE'
          AND table_name NOT LIKE 'flyway_schema_history'
          AND (table_name LIKE 'tb_%')
    LOOP
        RAISE NOTICE 'Processando tabela: %', record_table.table_name;

        -- Obter o nome da sequence associada à tabela
        SELECT SUBSTRING(column_default FROM position('sq' IN column_default) FOR (position(':' IN column_default) - position('sq' IN column_default) - 1))
        INTO sequence_name
        FROM information_schema.columns
        WHERE table_schema = schema_name
          AND column_default LIKE 'nextval%'
          AND table_name = record_table.table_name;

        -- Verificar se a tabela tem uma sequence associada
        IF sequence_name IS NOT NULL THEN
            -- Obter a coluna associada à sequence
            SELECT column_name
            INTO column_with_sequence
            FROM information_schema.columns
            WHERE table_schema = schema_name
              AND column_default LIKE 'nextval%'
              AND table_name = record_table.table_name;

            -- Obter o maior valor da coluna na tabela
            EXECUTE FORMAT('SELECT COALESCE(MAX(%I), 1) FROM %I.%I', column_with_sequence, schema_name, record_table.table_name)
            INTO max_table_value;

            -- Atualizar a sequence para iniciar com o maior valor + 1
            RAISE NOTICE 'Atualizando a sequence % para iniciar com o valor %...', sequence_name, max_table_value + 1;
            EXECUTE FORMAT('ALTER SEQUENCE %I.%I RESTART WITH %s', schema_name, sequence_name, max_table_value + 1);

            RAISE NOTICE 'Sequence da tabela % atualizada com sucesso.', record_table.table_name;
        ELSE
            RAISE NOTICE 'Nenhuma sequence associada encontrada para a tabela %.', record_table.table_name;
        END IF;

        RAISE NOTICE '';
    END LOOP;

    -- Rodapé do processo
    RAISE NOTICE '';
    RAISE NOTICE '--------------------------------------------------------------------------------------';
    RAISE NOTICE 'PROCESSO CONCLUÍDO COM SUCESSO.';
    RAISE NOTICE '--------------------------------------------------------------------------------------';

END $$;