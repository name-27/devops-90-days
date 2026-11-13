#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Error: directory name is required"
    exit 1
fi

echo "Directory name: $1"
echo "Starting operation..."
