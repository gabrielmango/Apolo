from utils.gerenciar_json import salvar_em_json


def input_tipos_documentos():
    tipos_documentos = []
    while True:
        tipo_documento = {}
        tipo_documento['nome'] = input('Nome do tipo de documento: ')
        tipo_documento['sigla'] = input('Sigla do tipo de documento: ')
        tipo_documento['tamanho'] = input('Tamanho do tipo de documento: ')

        funcionalidade = True
        while funcionalidade:
            tipo_documento['funcionalidades'] = []

            tipo_documento['funcionalidades'].append(
                input('Funcionalidades do tipo de documento: ')
            )

            opcao = input(
                'Deseja adicionar mais uma funcionalidade? (S/N): '
            ).upper()
            if opcao == 'S':
                continue
            elif opcao == 'N':
                funcionalidade = False

        projetos = True
        while projetos:
            tipo_documento['projetos'] = []

            tipo_documento['projetos'].append(
                input('Projetos relacionados ao tipo de documento: ')
            )

            opcao = input(
                'Deseja adicionar mais um projeto relacionado? (S/N): '
            ).upper()
            if opcao == 'S':
                continue
            elif opcao == 'N':
                projetos = False

        extensoes = True
        while extensoes:
            tipo_documento['extensoes'] = []

            tipo_documento['extensoes'].append(
                input('Extensões válidas para o tipo de documento: ').upper()
            )

            opcao = input(
                'Deseja adicionar mais uma extensão válida? (S/N): '
            ).upper()
            if opcao == 'S':
                continue
            elif opcao == 'N':
                extensoes = False

        while True:
            opcao = input(
                'Deseja adicionar mais um tipo de documento? (S/N): '
            ).upper()
            if opcao == 'S':
                break
            elif opcao == 'N':
                tipos_documentos.append(tipo_documento)
                return tipos_documentos
            else:
                print('Opção inválida. Tente novamente.')


def main():
    tipos_documentos = input_tipos_documentos()
    print(tipos_documentos)
    nome_arquivo = input('Qual o nome do arquivo? ') + '.json'
    salvar_em_json(nome_arquivo, tipos_documentos)
    print('Tipos de documentos salvos com sucesso!')


if __name__ == '__main__':
    main()
