#! /bin/bash

set -u

## get model from huggingface
## requires login with: huggingface-cli login
## also requires you do have already created and activate a venv in python3

REPO_NAME=$1
FILE_NAME=$2
LOCAL_DIR=${3:-.}

huggingface-cli download ${REPO_NAME} ${FILE_NAME} --local-dir ${LOCAL_DIR}