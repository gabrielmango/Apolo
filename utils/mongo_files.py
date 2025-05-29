import gridfs
from bson import ObjectId
from pymongo import MongoClient


class GerenciadorPDFMongo:
    def __init__(self, nome_banco, uri):
        self.nome_banco = nome_banco
        self.uri = uri

    def salvar_pdf(self, caminho_pdf, nome_collection):
        """
        Salva um PDF no MongoDB usando GridFS.
        Retorna o ObjectId do arquivo salvo.
        """
        with MongoClient(self.uri) as client:
            db = client[self.nome_banco]
            fs = gridfs.GridFS(db, collection=nome_collection)

            with open(caminho_pdf, 'rb') as f:
                file_id = fs.put(f, filename=caminho_pdf)

        return file_id

    def ler_pdf(self, file_id, nome_collection, caminho_saida):
        """
        Recupera um PDF do MongoDB e salva localmente.
        """
        with MongoClient(self.uri) as client:
            db = client[self.nome_banco]
            fs = gridfs.GridFS(db, collection=nome_collection)

            dados_pdf = fs.get(ObjectId(file_id)).read()

        with open(caminho_saida, 'wb') as f:
            f.write(dados_pdf)
