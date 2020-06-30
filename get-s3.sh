#!/usr/bin/env bash

set +e

s3bucket="ttv-s3-test-customer"
buildpath="./test-aws"

mkdir $buildpath
cd $buildpath
echo $PWD

aws s3 sync s3://$s3bucket $PWD
