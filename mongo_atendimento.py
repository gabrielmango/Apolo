from pprint import pprint

import pandas as pd

from move_fileserver_files import (FILESERVER_MONGO_PROD, connect_to_mongodb,
                                   engine_bohr, is_base64)


def main():
    db = connect_to_mongodb(FILESERVER_MONGO_PROD, 'file')

    collection_file = db['ATENDIMENTO.files']
    collection_chunks = db['ATENDIMENTO.chunks']

    projection = {'filename': 1, 'metadata.nome': 1, 'metadata.extensao': 1}

    documentos = collection_file.find({}, projection).limit(100)

    for documento in documentos:

        if not documento:
            continue

        query = {'files_id': documento['_id']}
        projection = {'data': 1, '_id': 0}
        arquivo = collection_chunks.find_one(query, projection)

        if not arquivo:
            continue

        print(is_base64(arquivo['data']))

        df = pd.DataFrame(
            [
                {
                    'filename': documento['filename'],
                    'nome': documento['metadata']['nome'],
                    'extensao': documento['metadata']['extensao'],
                    'data': arquivo['data'],
                }
            ]
        )
        df.to_sql(
            'mongo_documento_atendimento',
            con=engine_bohr,
            if_exists='append',
            index=False,
            schema='mongodb',
        )


if __name__ == '__main__':
    from datetime import datetime

    start_time = datetime.now()
    main()
    end_time = datetime.now()
    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
