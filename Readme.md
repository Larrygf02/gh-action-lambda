# Github Action to deploy Lambda and test with API Gateway

## Setup ECR

Create an ecr and upload image in the ecr. Is necessary to pass your account-id (aws)

```
    sh ecr-setup.sh <your-account-id>
```

## Execute cloudformation (deploy.yml)

This cloudformation creates an API and Lambda Function.

![alt text](https://github.com/Larrygf02/gh-action-lambda/blob/0bf7cd5800ff25a5fa6ced17c9f50e5a19f9d07b/public/cfn-start.png?raw=true)

## Get your url in API Gateway

![alt text](https://github.com/Larrygf02/gh-action-lambda/blob/0bf7cd5800ff25a5fa6ced17c9f50e5a19f9d07b/public/api.png?raw=true)

## Testing your url in postman

![alt text](https://github.com/Larrygf02/gh-action-lambda/blob/0bf7cd5800ff25a5fa6ced17c9f50e5a19f9d07b/public/postman-1.png?raw=true)

## Make some changes in index.py to trigger Github Action workflow

![alt text](https://github.com/Larrygf02/gh-action-lambda/blob/0bf7cd5800ff25a5fa6ced17c9f50e5a19f9d07b/public/code.png?raw=true)

## Testing again your url in postman to verify change

![alt text](https://github.com/Larrygf02/gh-action-lambda/blob/a59e7c7de5d2f69da1f2c7d8ad8eadd59045a987/public/postman-2.png?raw=true)
