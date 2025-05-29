import os
from datetime import datetime

import gridfs
from pymongo import MongoClient


class GerenciadorPDFMongo:
    def __init__(
        self, nome_banco='meu_banco', uri='mongodb://localhost:27017/'
    ):
        self.nome_banco = nome_banco
        self.uri = uri

    def salvar_pdf(
        self,
        caminho_pdf,
        nome_collection,
        nome_amigavel=None,
        uploadBy=None,
        privado=False,
    ):
        with MongoClient(self.uri) as client:
            db = client[self.nome_banco]
            fs = gridfs.GridFS(db, collection=nome_collection)

            base_name = os.path.basename(caminho_pdf)
            nome_sem_extensao, extensao = os.path.splitext(base_name)

            nome_amigavel = nome_amigavel or base_name

            with open(caminho_pdf, 'rb') as f:
                file_id = fs.put(
                    f,
                    filename=nome_sem_extensao,
                    metadata={
                        'uploadBy': uploadBy,
                        'extensao': extensao.lstrip('.'),
                        'tamanho': os.path.getsize(caminho_pdf),
                        'dataUpload': datetime.now(),
                        'nome': nome_amigavel,
                        'privado': privado,
                    },
                )
        return file_id

    def ler_pdf(self, filename, nome_collection, caminho_saida_base):
        with MongoClient(self.uri) as client:
            db = client[self.nome_banco]
            fs = gridfs.GridFS(db, collection=nome_collection)

            grid_out = fs.find_one({'filename': filename})
            if not grid_out:
                raise FileNotFoundError(
                    f"Arquivo com filename '{filename}' não encontrado na coleção '{nome_collection}'."
                )

            extensao = grid_out.metadata.get('extensao', '')
            if extensao and not extensao.startswith('.'):
                extensao = '.' + extensao

            caminho_completo = caminho_saida_base + extensao

            dados_arquivo = grid_out.read()

        with open(caminho_completo, 'wb') as f:
            f.write(dados_arquivo)


class MigradorGridFS:
    def __init__(self, uri_origem, banco_origem):
        self.uri_origem = uri_origem
        self.banco_origem = banco_origem

    def migrar_arquivos_por_filename(
        self, uuid, colecao_origem, uri_destino, banco_destino, colecao_destino
    ):

        with MongoClient(self.uri_origem) as client_origem, MongoClient(
            uri_destino
        ) as client_destino:
            db_origem = client_origem[self.banco_origem]
            fs_origem = gridfs.GridFS(db_origem, collection=colecao_origem)

            db_destino = client_destino[banco_destino]
            fs_destino = gridfs.GridFS(db_destino, collection=colecao_destino)

            grid_out = fs_origem.find_one({'filename': uuid})
            if not grid_out:
                raise FileNotFoundError(
                    f"Arquivo com filename '{uuid}' não encontrado na coleção '{colecao_origem}'."
                )

            dados = grid_out.read()
            metadata = grid_out.metadata or {}

            fs_destino.put(dados, filename=uuid, metadata=metadata)
