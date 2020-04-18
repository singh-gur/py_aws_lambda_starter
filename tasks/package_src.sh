#!/bin/bash

pushd $(dirname "$0")/../
[ -f ./src.zip ] && rm ./src.zip
pushd ./src
zip -r ../src.zip .
popd
popd