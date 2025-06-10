from utils.setup_logging import LogHandler

handler = LogHandler('delete_internal_user')


class DeleteInternalUser:
    def __init__(self, number_cpf: str) -> None:
        self._number_cpf = number_cpf


@handler
def main():
    user = DeleteInternalUser('12314411609')


if __name__ == '__main__':
    main()
