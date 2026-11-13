#!/bin/bash

for DIR in app logs backups
do
    if [ -d "$DIR" ]; then
        echo "Directory $DIR already exists"
    else
        mkdir "$DIR"
        echo "Directory $DIR created"
    fi
done
