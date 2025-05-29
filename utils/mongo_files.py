import os
from datetime import datetime

import gridfs
from bson import ObjectId
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
        """
        Salva um arquivo no MongoDB GridFS.

        - filename salvo será o nome do arquivo **sem extensão** (ex: UUID)
        - extensão será salva em metadata.extensao
        - nome_amigavel pode ser diferente do filename e será salvo em metadata.nome
        - uploadBy e privado são dados opcionais para metadata
        """
        with MongoClient(self.uri) as client:
            db = client[self.nome_banco]
            fs = gridfs.GridFS(db, collection=nome_collection)

            base_name = os.path.basename(caminho_pdf)
            nome_sem_extensao, extensao = os.path.splitext(base_name)

            # Se não foi passado nome amigável, usa o nome com extensão (arquivo original)
            nome_amigavel = nome_amigavel or base_name

            with open(caminho_pdf, 'rb') as f:
                file_id = fs.put(
                    f,
                    filename=nome_sem_extensao,  # salva filename sem extensão
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
