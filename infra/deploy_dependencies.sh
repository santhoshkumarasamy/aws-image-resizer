#!/bin/bash

echo "deploying the stack"

aws cloudformation deploy --template-file lambdaLayerTemplate.json --stack-name image-resizer-p1-dependencies

aws s3 cp ../pillow_lambda_layer.zip s3://project1-lambda-resources/pillow_lambda_layer.zip
aws s3 cp ../lambda.zip s3://project1-lambda-resources/lambda.zip
