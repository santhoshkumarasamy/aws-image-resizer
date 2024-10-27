#!/bin/bash

echo "destroying the stack"

aws s3 rm s3://project1-uploaded-image-bucket/ \
    --recursive 

aws s3 rm s3://project1-resized-image-bucket/ \
    --recursive 

aws cloudformation delete-stack --stack-name image-resizer-p1