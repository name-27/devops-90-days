#!/bin/bash

read -p "Enter file or directory path: " TARGET

if [ -e "$TARGET" ]; then
    echo "Object exists"

    if [ -f "$TARGET" ]; then
        echo "It is a regular file"
    elif [ -d "$TARGET" ]; then
        echo "It is a directory"
    fi

    if [ -r "$TARGET" ]; then
        echo "Readable: yes"
    else
        echo "Readable: no"
    fi

    if [ -w "$TARGET" ]; then
        echo "Writable: yes"
    else
        echo "Writable: no"
    fi

else
    echo "Object does not exist"
fi
