#!/bin/bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $1.dkr.ecr.us-east-1.amazonaws.com
aws ecr create-repository --repository-name lambda-gh-api-demo --image-scanning-configuration scanOnPush=true --image-tag-mutability MUTABLE
docker build --platform linux/amd64 -t hello-demo .
docker tag hello-demo:latest $1.dkr.ecr.us-east-1.amazonaws.com/lambda-gh-api-demo:latest
docker push $1.dkr.ecr.us-east-1.amazonaws.com/lambda-gh-api-demo:latest