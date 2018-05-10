#!/bin/bash
echo 'Running transcribe'


: "${API_KEY?You need to set the API Key}"

curl -s -X POST -H "Content-Type: application/json" --data-binary @request.json \
"https://speech.googleapis.com/v1beta1/speech:longrunningrecognize?key=${API_KEY}"

