#!/usr/bin/env python3
from model.base_model import BaseModel
from model.user import User
from model.users_measure import Measurement
from model.engines.db_storage import DBStorage
from os import getenv

storage_type = getenv('BDYM_TYPE_STORAGE')
if storage_type == 'db':
    storage = DBStorage()
storage.reload()