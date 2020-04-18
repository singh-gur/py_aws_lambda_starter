import dotenv
dotenv.load_dotenv()

import json
from os import environ

def handler(event, context): 
    return json.dumps({"vars": environ.copy()})
