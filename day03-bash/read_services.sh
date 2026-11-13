#!/bin/bash

while read -r SERVICE
do
    echo "Found service: $SERVICE"
done < services.txt
