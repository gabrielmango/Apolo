from abc import ABC, abstractmethod

from database import executar_query
from utils.ambientes import gerais_system
from utils.setup_logging import LogHandler

handler = LogHandler('delete_internal_user')


class DropBase(ABC):
    def __init__(
        self, environment: str, number_cpf: str, user_uuid: str = None
    ) -> None:
        self._environment = environment
        self._number_cpf = number_cpf
        self._user_uuid = user_uuid
        self.drop_information()

    @abstractmethod
    def drop_information(self) -> None:
        pass


class DropUserSecurity(DropBase):
    def drop_information(self):
        handler.logger.info('Delete internal user in security system.')
        user_id = self._find_user_internal()
        self._drop_user_profile(user_id)
        self._drop_user_internal(user_id)
        handler.logger.info('Internal user successfully deleted!')

    def _find_user_internal(self):
        return executar_query(
            True,
            f"""
            select 
                co_seq_usuario_interno as id
            from scsdp.tb_usuario_interno tui 
            where tui.nu_cpf_usuario_interno = '{self._number_cpf}';
            """,
            gerais_system.get('scsdp').get(self._environment),
        )[0]['id']

    def _drop_user_profile(self, user_id):
        executar_query(
            False,
            f"""
            delete
            from scsdp.tb_usuario_interno_perfil t1
            where t1.co_usuario_interno = {user_id};
            """,
            gerais_system.get('scsdp').get(self._environment),
        )

    def _drop_user_internal(self, user_id):
        executar_query(
            False,
            f"""
            delete
            from scsdp.tb_usuario_interno t1
            where t1.co_seq_usuario_interno = {user_id};
            """,
            gerais_system.get('scsdp').get(self._environment),
        )


class DropGeralInformation(DropBase):
    def drop_information(self):
        handler.logger.info('Delete general information user in system.')
        general_id = self._find_general_information()
        self._drop_affiliation(general_id)
        self._drop_general_information(general_id)
        handler.logger.info('General information user successfully deleted!')

    def _find_general_information(self):
        return executar_query(
            True,
            f"""
            select co_seq_geral_pessoa as id
            from geralpessoa.tb_geral_pessoa t
            where t.co_uuid_2 = '{self._user_uuid}';
            """,
            gerais_system.get('geralpessoa').get(self._environment),
        )[0]['id']

    def _drop_affiliation(self, general_id):
        executar_query(
            False,
            f"""
            delete
            from geralpessoa.tb_filiacao_pessoa t1
            where t1.co_geral_pessoa = {general_id};
            """,
            gerais_system.get('geralpessoa').get(self._environment),
        )

    def _drop_general_information(self, general_id):
        executar_query(
            False,
            f"""
            delete
            from geralpessoa.tb_geral_pessoa t1
            where t1.co_seq_geral_pessoa = {general_id};
            """,
            gerais_system.get('geralpessoa').get(self._environment),
        )


class DropLocation(DropBase):
    def drop_information(self):
        handler.logger.info('Delete location user in system.')
        self._drop_location()
        handler.logger.info('Location user successfully deleted!')

    def _drop_location(self):
        executar_query(
            False,
            f"""
            delete
            from localizacao.tb_endereco t
            where t.co_uuid_2 = '{self._user_uuid}';
            """,
            gerais_system.get('localizacao').get(self._environment),
        )


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
            gerais_system.get('documento').get(self._environment),
        )[0]['uuid']

    def drop_user_security(self):
        DropUserSecurity(self._environment, self._number_cpf)

    def drop_user_general_information(self):
        DropGeralInformation(self._environment, self._number_cpf)

    def drop_user_location(self):
        DropLocation(self._environment, self._number_cpf, self._user_uuid)


@handler
def main():
    user = DeleteInternalUser('dev', '12314411609')


if __name__ == '__main__':
    main()
