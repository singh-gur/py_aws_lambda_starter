#!/bin/bash

pushd $(dirname "$0")

cp -r ./src ./out
pip install --system -t ./out -r requirements.txt
[ -f ./$1.zip ] && rm ./$1.zip
pushd ./out
zip -r ../$1.zip .
popd
rm -rf ./out
popd 