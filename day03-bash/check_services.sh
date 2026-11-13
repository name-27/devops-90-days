#!/bin/bash

while read -r SERVICE
do
    case "$SERVICE" in
        docker)
            echo "Docker service found"
            ;;
        nginx)
            echo "Nginx service found"
            ;;
        ssh)
            echo "SSH service found"
            ;;
        *)
            echo "Unknown service: $SERVICE"
            ;;
    esac
done < services.txt
