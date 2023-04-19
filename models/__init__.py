#!/usr/bin/python3
<<<<<<< HEAD
"""This module instantiates an object of class FileStorage"""
import os


if os.getenv('HBNB_TYPE_STORAGE') == 'db':
=======
"""Instantiates a storage object.

-> If the environmental variable 'HBNB_TYPE_STORAGE' is set to 'db',
   instantiates a database storage engine (DBStorage).
-> Otherwise, instantiates a file storage engine (FileStorage).
"""
from os import getenv


if getenv("HBNB_TYPE_STORAGE") == "db":
>>>>>>> 4c501d4f22acaa3fa758c7957ef0e0ec15597e8a
    from models.engine.db_storage import DBStorage
    storage = DBStorage()
    storage.reload()
else:
    from models.engine.file_storage import FileStorage
    storage = FileStorage()
<<<<<<< HEAD
    storage.reload()
=======
storage.reload()
>>>>>>> 4c501d4f22acaa3fa758c7957ef0e0ec15597e8a
