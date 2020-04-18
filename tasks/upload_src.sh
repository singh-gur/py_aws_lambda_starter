#!/bin/bash
pushd $(dirname "$0")/../
aws s3 cp src.zip s3://$1
popd 