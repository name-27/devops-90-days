#!/bin/bash

check_arguments() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: $0 <directory>"
        exit 1
    fi
}

check_arguments "$@"


check_directory() {
    if [ ! -d "$1" ]; then
        echo "Error: directory '$1' does not exist"
        exit 1
    fi
}

SOURCE_DIR="$1"
check_directory "$SOURCE_DIR"


create_backup() {
    mkdir -p backups

    TIMESTAMP=$(date +%Y%m%d_%H%M%S)
    ARCHIVE="backups/${1}_${TIMESTAMP}.tar.gz"

    if tar -czf "$ARCHIVE" "$1"; then
        echo "Backup created: $ARCHIVE"
    else
        echo "Error: backup failed"
        return 1
    fi
}

create_backup "$SOURCE_DIR" || exit 1
