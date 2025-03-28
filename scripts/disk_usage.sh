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
    echo "Disk usage: $usage"
    log_action "Checked disk usage of $dir: $usage"
}