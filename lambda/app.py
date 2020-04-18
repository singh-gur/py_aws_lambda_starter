from boto3 import client
from zipfile import ZipFile
from sys import path

def handler(event, context): 
    s3 = client('s3')
    s3.download_file(event["bucket"], event["file_name"], "/tmp/code.zip")
    with ZipFile('/tmp/code.zip', 'r') as zipObj:
        zipObj.extractall('/tmp/packages')
    path.append('/tmp/packages')
    from runner import run
    return run(event, context)
