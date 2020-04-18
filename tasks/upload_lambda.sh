#!/bin/bash

pushd $(dirname "$0")/../
if  [ -f $2 ]
then
    aws lambda update-function-code --function-name $1 --zip-file fileb://lambda.zip
else
    echo "$2 file doesn't exists"
fi
popd