#!/bin/bash

# Define color codes
RED='\033[0;31m'
NC='\033[0m' # No Color

source scripts/logger.sh

list_files() {
    clear

    echo "+----------------------------------------+"
    echo "|               LIST FILES               |"
    echo "+----------------------------------------+"
    echo ""

    read -rp "Enter directory path: " dir
    echo ""

    # Check if directory is not found
    if [[ ! -d "$dir" ]]; then
        echo -e "${RED}Error: Directory does not exist!${NC}"
        log_action "Failed to list files: $dir does not exist."
        return 1
    fi

    # Check if directory is empty
    if [[ -z "$(ls -A "$dir")" ]]; then
        echo "The directory is empty."
        log_action "Listed files in $dir: Directory is empty."
        return 1
    fi

    echo "Files in $dir:"
    ls -lh "$dir"

    log_action "Listed files in $dir"
}