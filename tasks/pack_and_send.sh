#!/bin/bash
pushd $(dirname "$0")
./package_lambda.sh
./package_src.sh
./upload_lambda.sh $1
./upload_src.sh $2
popd 
