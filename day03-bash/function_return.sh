#!/bin/bash

check_number() {
    if [ "$1" -gt 10 ]; then
        echo "Number is greater than 10"
        return 0
    else
        echo "Number is 10 or less"
        return 1
    fi
}

check_number 7

echo "Function exit code: $?"
