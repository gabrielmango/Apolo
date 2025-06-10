from database import executar_query
from utils.ambientes import string_documento, string_scsdp
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

    def _find_user_internal(self):
        return executar_query(
            True,
            f"""
            select 
                co_seq_usuario_interno as id
            from scsdp.tb_usuario_interno tui 
            where tui.nu_cpf_usuario_interno = '{self._number_cpf}';
            """,
            string_scsdp.get(self._environment),
        )[0]['id']

    def _drop_user_profile(self, user_id):
        executar_query(
            False,
            f"""
            delete
            from scsdp.tb_usuario_interno_perfil t1
            where t1.co_usuario_interno = {user_id};
            """,
            string_scsdp.get(self._environment),
        )

    def _drop_user_internal(self, user_id):
        executar_query(
            False,
            f"""
            delete
            from scsdp.tb_usuario_interno t1
            where t1.co_seq_usuario_interno = {user_id};
            """,
            string_scsdp.get(self._environment),
        )

    def drop_user_security(self):
        handler.logger.info('Delete internal user in security system.')
        user_id = self._find_user_internal()
        self._drop_user_profile(user_id)
        self._drop_user_internal(user_id)
        handler.logger.info('Internal user successfully deleted!')


@handler
def main():
    user = DeleteInternalUser('dev', '12314411609')
    user.drop_user_security()


if __name__ == '__main__':
    main()
