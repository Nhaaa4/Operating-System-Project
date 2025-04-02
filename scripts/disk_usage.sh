#!/bin/bash

# Define color codes
RED='\033[0;31m'
NC='\033[0m' # No Color

source scripts/logger.sh

disk_usage() {
    clear
    echo "+----------------------------------------------+"
    echo "|                 DISK USAGE                   |"
    echo -e "+----------------------------------------------+\n"

    read -rp "Enter directory path: " dir
    echo ""

    if [[ ! -d "$dir" ]]; then
        echo -e "${RED}Error: Directory does not exist.${NC}"
        log_action "Failed to check disk usage: $dir does not exist."
        return 1
    fi

    usage=$(du -sh "$dir")
    if [ $? -eq 0 ]; then
        echo "Disk usage: $usage"
        log_action "Checked disk usage of $dir: $usage"
    else
        echo "Error: Directory $dir does not exist."
        log_action "Attempted to check disk usage of non-existent directory: $dir"
    fi

}