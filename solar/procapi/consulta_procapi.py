from pymongo import MongoClient

from utils.ambientes import string_procapi

client = MongoClient(string_procapi.get('prod'))
db = client['dbprocapi']
collection = db.evento

data = collection.find({{'descricao': {'$regex': '/Audiência Conciliação/'}}})

print(len(list(data)))
