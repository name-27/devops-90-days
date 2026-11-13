#!/bin/bash

read -p "Enter your name: " USER_NAME

if [ "$USER_NAME" = "NAME" ]; then
    echo "Welcome, NAME!"
else
    echo "Hello, $USER_NAME!"
fi
