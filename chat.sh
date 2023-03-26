#!/bin/bash

# Set your OpenAI API key
api_key="INSERT_YOUR_API_KEY"

# Set the model ID
model_id="gpt-3.5-turbo"

# Call the OpenAI API
response=$(curl -s https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $api_key" \
  -d "{
    \"model\": \"$model_id\",
    \"messages\": [{\"role\": \"user\", \"content\": \"$1\"}]
  }")

# Extract the generated text from the response
output=$(echo $response | /opt/homebrew/bin/jq -r '.choices[0].message.content')

# Return parsed response
echo $output