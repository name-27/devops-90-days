#!/bin/bash

show_user() {
    echo "User name: $1"
    echo "User role: $2"
    echo "Total arguments: $#"
}

show_user "NAME" "DevOps Engineer"
