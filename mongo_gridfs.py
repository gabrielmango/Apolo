import gridfs
from dotenv import dotenv_values
from pymongo import MongoClient

config = dotenv_values('.env')
FILESERVER_MONGO_DEV = config['FILESERVER_MONGO_DEV']


client = MongoClient(FILESERVER_MONGO_DEV)
db = client['file']


def download_file(db, collection_name, uuid_file):
    fs = gridfs.GridFS(db, collection=collection_name)
    file_data = fs.find_one({'filename': uuid_file})

    file_name = f"{filename}.{file_data.metadata['extensao']}"

    if file_data:
        with open(file_name, 'wb') as output_file:
            output_file.write(file_data.read())
            print(f'Arquivo {file_name} recuperado e salvo com sucesso!')


download_file(db, 'DOCUMENTO_LEGADO', '5f18fe74-00ca-4549-a807-ca5b1cd69046')
