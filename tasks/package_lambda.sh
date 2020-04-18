#!/bin/bash

pushd $(dirname "$0")/../
cp -r ./lambda ./out
pip install --system -t ./out -r requirements.txt
[ -f ./lambda.zip ] && rm ./lambda.zip
pushd ./out
zip -r ../lambda.zip .
popd
rm -rf ./out
popd 