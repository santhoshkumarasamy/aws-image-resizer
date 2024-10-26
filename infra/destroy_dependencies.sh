#!/bin/bash

echo "destroying the stack"

aws s3 rm s3://project1-lambda-resources/ \
    --recursive 

aws cloudformation delete-stack --stack-name image-resizer-p1-dependencies
