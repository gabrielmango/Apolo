from database import executar_query
from utils.ambientes import string_documento
from utils.setup_logging import LogHandler

handler = LogHandler('delete_internal_user')


class DeleteInternalUser:
    def __init__(self, environment: str, number_cpf: str) -> None:
        self._environment = environment
        self._number_cpf = number_cpf
        self._user_uuid = self.get_uuid_by_document()

    def get_uuid_by_document(self):
        return executar_query(
            True,
            f"""
            select 
                co_uuid_2 as uuid
            from 
                documento.tb_documento td 
            where 
                td.tp_documento = 'CPF' and 
                td.st_ativo and
                td.nu_documento = '{self._number_cpf}';
            """,
            string_documento.get(self._environment),
        )[0]['uuid']


@handler
def main():
    user = DeleteInternalUser('dev', '12314411609')


if __name__ == '__main__':
    main()
