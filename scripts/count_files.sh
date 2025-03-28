#!/bin/bash

# Define color codes
RED='\033[0;31m'
NC='\033[0m' 

source scripts/logger.sh

count_files() {
    clear
    echo "+----------------------------------------------+"
    echo "|                COUNT FILES                   |"
    echo -e "+----------------------------------------------+\n"

    read -rp "Enter directory path: " dir
    echo ""

    if [[ ! -d "$dir" ]]; then
        echo -e "${RED}Error: Directory does not exist.${NC}"
        log_action "Failed to count files: $dir does not exist."
        return 1
    fi

    count=$(find "$dir" -type f | wc -l)
    echo "Total files in $dir: $count file(s)"
    log_action "Counted $count files in $dir"
}