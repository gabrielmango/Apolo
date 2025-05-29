import os

import gridfs
from bson import ObjectId
from pymongo import MongoClient


class GerenciadorPDFMongo:
    def __init__(
        self, nome_banco='meu_banco', uri='mongodb://localhost:27017/'
    ):
        self.nome_banco = nome_banco
        self.uri = uri

    def salvar_pdf(self, caminho_pdf, nome_collection):
        """
        Salva um PDF (ou outro arquivo) no MongoDB usando GridFS.
        """
        with MongoClient(self.uri) as client:
            db = client[self.nome_banco]
            fs = gridfs.GridFS(db, collection=nome_collection)

            with open(caminho_pdf, 'rb') as f:
                file_id = fs.put(
                    f, filename=os.path.basename(caminho_pdf)
                )  # salva o nome original

        return file_id

    def ler_pdf(self, file_id, nome_collection, caminho_saida_base):
        """
        Recupera um arquivo salvo no MongoDB via GridFS.
        Adiciona a extensão automaticamente com base no filename salvo.
        """
        with MongoClient(self.uri) as client:
            db = client[self.nome_banco]
            fs = gridfs.GridFS(db, collection=nome_collection)

            grid_out = fs.get(ObjectId(file_id))
            nome_original = grid_out.filename
            dados_arquivo = grid_out.read()

        # Extrai extensão do nome original
        _, extensao = os.path.splitext(nome_original)
        caminho_completo = caminho_saida_base + extensao

        with open(caminho_completo, 'wb') as f:
            f.write(dados_arquivo)

        print(f'Arquivo salvo como: {caminho_completo}')
        return caminho_completo
