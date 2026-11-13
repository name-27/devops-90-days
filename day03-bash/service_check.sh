#!/bin/bash

service_check() {
    echo "Checking service: $1"

    if [ "$1" = "docker" ]; then
        echo "Service is supported"
        return 0
    else
        echo "Unknown service"
        return 1
    fi
}

service_check "$1"
echo "Exit code: $?"
