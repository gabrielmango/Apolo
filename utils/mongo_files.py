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

    def ler_pdf(self, filename, nome_collection, caminho_saida_base):
        """
        Recupera um arquivo no GridFS pelo campo filename e salva localmente.
        Usa a extensão correta do campo metadata.extensao.
        """
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
