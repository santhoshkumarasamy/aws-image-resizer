#!/bin/bash

echo "deploying the stack"

aws cloudformation deploy --template-file template.json --stack-name image-resizer-p1 --capabilities CAPABILITY_IAM