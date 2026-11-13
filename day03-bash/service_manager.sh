#!/bin/bash

ACTION="$1"
SERVICE="$2"

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <action> <service>"
    exit 1
fi

case "$ACTION" in
    start)
        echo "Starting service: $SERVICE"
        ;;
    stop)
        echo "Stopping service: $SERVICE"
        ;;
    restart)
        echo "Restarting service: $SERVICE"
        ;;
    status)
        echo "Checking status of service: $SERVICE"
        ;;
    *)
        echo "Unknown action: $ACTION"
        exit 1
        ;;
esac
