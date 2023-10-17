# AWS Lambda that uses Amazon Bedrock - NodeJS Variant

_Infrastructure as code framework used_: AWS SAM
_AWS Services used_: AWS Lambda, Amazon Bedrock

## Summary of the demo

In this demo you will see:

- How to use Amazon Bedrock from a Lambda function written in NodeJS

This demo is part of a video posted in FooBar Serverless channel. You can check the [video](https://youtu.be/P9Lnf4GMUsI) to see the whole demo.  
The video showcases a Python lambda function: this repository is simply a NodeJS implementation of the same concept.

Important: this application uses various AWS services and there are costs associated with these services after the Free Tier usage - please see the AWS Pricing page for details. You are responsible for any AWS costs incurred. No warranty is implied in this example.

## Requirements

- AWS CLI already configured with Administrator permission
- AWS SAM CLI installed - minimum version 1.94.0 (sam --version)
- NodeJS 16 (minumum)

## Deploy this demo

We will be using AWS SAM.

Deploy the project to the cloud:

```
sam build
sam deploy -g # Guided deployments
```

When asked about functions that may not have authorization defined, answer (y)es. The access to those functions will be open to anyone, so keep the app deployed only for the time you need this demo running.

Next times, when you update the code, you can build and deploy with:

```
sam build && sam deploy
```

To test:
```
./invoke.sh <function-name> <number-from-1-to-6>
```

To get your function name you can get it with the following command:
```
sam list stack-outputs --stack-name <stack-name>
```

To delete the app:

```
sam delete
```

## Links related to this code

- Video with more details: https://youtu.be/P9Lnf4GMUsI
- Original repository: https://github.com/mavi888/sam-bedrock-lambda

````
