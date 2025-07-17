DATA_CESV_QUERY = """
SELECT 
    t1.co_uuid_2,
    t1.co_uuid AS uuid_candidatura
FROM cesv.tb_candidatura t1
ORDER BY t1.co_seq_candidatura DESC;
"""

DATA_FILESERVER_QUERY = """
select 
	t1.co_seq_anexo,
	t1.no_texto_2,
	t1.co_tipo_documento,
	t1.co_uuid_2, 
	t1.co_uuid_anexo_mongo
from fileserver.tb_anexo t1
where t1.st_ativo and t1.co_tipo_documento in (
673,
674,
675,
676,
677,
678,
679,
680,
681,
682,
683,
684,
686,
687,
688,
719,
734,
927,
928,
685
);
"""


