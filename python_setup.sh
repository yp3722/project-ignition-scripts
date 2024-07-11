#!/bin/bash

# Check if the app name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <app_name>"
  exit 1
fi

# Define the app name
APP_NAME=$1

# Define the project structure
mkdir -p ${APP_NAME}/${APP_NAME}
mkdir -p ${APP_NAME}/tests

# Create the __init__.py files
touch ${APP_NAME}/${APP_NAME}/__init__.py
touch ${APP_NAME}/tests/__init__.py

# Create the main.py and test_main.py files
touch ${APP_NAME}/${APP_NAME}/main.py
touch ${APP_NAME}/tests/test_main.py

# Create the requirements.txt, README.md, and .gitignore files
touch ${APP_NAME}/requirements.txt
touch ${APP_NAME}/README.md

# Fetch the Python .gitignore template and save it to the .gitignore file
curl -o ${APP_NAME}/.gitignore https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore

echo "Project structure for '${APP_NAME}' created successfully!"

