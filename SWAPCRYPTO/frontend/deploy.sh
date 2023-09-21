#!/bin/bash

# Install or update the required Node.js packages in your project directory
npm install --save --legacy-peer-deps react-kawaii

# Navigate to the 'functions' directory
cd functions

# Install Node.js packages for the 'functions' directory
npm install

# Add secrets as explained in your "Handling Secrets" process (you'll need to provide details on how this is done)
# For example, you might use environment variables or a secrets management tool.

# Build the functions
npm run build

# Return to the project root directory
cd ..

# Build the entire project (assuming you have a build script in your project's package.json)
npm run build

# Deploy your Google Cloud Function
# Use the 'gcloud functions deploy' command with the appropriate options
gcloud functions deploy run \
  --runtime=nodejs16 \
  --trigger-http \
  --allow-unauthenticated

# Monitor and verify your deployed function in the Google Cloud Console
