#!/bin/bash

# Define color codes
RED='\033[0;31m'
NC='\033[0m' # No Color

source scripts/logger.sh

search() {
    clear
    echo "+-------------------------------------------+"
    echo "|              SEARCH FILES                 |"
    echo -e "+-------------------------------------------+\n"

    read -rp "Enter directory path: " dir
    
    # Check if directory exists
    if [[ ! -d "$dir" ]]; then
        echo -e "${RED}Error: Directory does not exist.${NC}"
        log_action "Failed search: $dir does not exist."
        return 1
    fi

    read -rp "Enter filename or extension to search for: " name

    # Search for files
    results=$(find "$dir" -type f -iname "*$name*")

    if [[ -z "$results" ]]; then
        echo -e "${RED}No files found matching '$name'.${NC}"
        log_action "No files found matching '$name' in $dir."
    else
        echo "Files found:"
        echo "$results"
        log_action "Found files matching '$name' in $dir."
    fi
}