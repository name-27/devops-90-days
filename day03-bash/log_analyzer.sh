#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE="$1"

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: file '$LOG_FILE' does not exist"
    exit 1
fi

TOTAL_LINES=$(wc -l < "$LOG_FILE")
ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")
WARNING_COUNT=$(grep -c "WARNING" "$LOG_FILE")
INFO_COUNT=$(grep -c "INFO" "$LOG_FILE")

echo "Log analysis report"
echo "-------------------"
echo "File: $LOG_FILE"
echo "Total lines: $TOTAL_LINES"
echo "Errors: $ERROR_COUNT"
echo "Warnings: $WARNING_COUNT"
echo "Info messages: $INFO_COUNT"
