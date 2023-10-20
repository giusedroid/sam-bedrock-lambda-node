#!/bin/bash

FUNCTION_NAME=$1
EVENT_NUMBER=$2

echo "Invoking function $FUNCTION_NAME"
aws lambda invoke \
    --region $AWS_REGION \
    --function-name $FUNCTION_NAME \
    --cli-binary-format raw-in-base64-out \
    --payload file://events/event-${EVENT_NUMBER}.json \
    response.json

echo "Response:"

# pretty printing the response
node -e "console.log(JSON.parse(require('./response').body))"
