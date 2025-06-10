from utils.setup_logging import LogHandler

handler = LogHandler('delete_internal_user')


@handler
def main():
    print(__file__)


if __name__ == '__main__':
    main()
