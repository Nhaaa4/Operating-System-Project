ws#!/bin/bash

# Define color codes
RED='\033[0;31m'
NC='\033[0m' # No Color

# Import functions from external script files
. scripts/list_files.sh
. scripts/backup.sh
. scripts/count_files.sh
. scripts/disk_usage.sh
. scripts/search.sh
. scripts/compress.sh

pause() {
    read -p "$*"
}

while true; do
    clear  

    echo "+--------------------------------------------+"
    echo "|      FILE & DIRECTORY MANAGEMENT           |"
    echo "+--------------------------------------------+"
    echo "1. List files"
    echo "2. Backup files"
    echo "3. Count files"
    echo "4. Disk usage"
    echo "5. Search for files"
    echo "6. Compress files"
    echo "7. Exit"
    read -rp "Select an option: " choice

    case $choice in
        1) list_files ;;
        2) backup ;;
        3) count_files ;;
        4) disk_usage ;;
        5) search ;;
        6) compress ;;
        7) echo -e "\nExiting..."; exit 0 ;;
        *) echo -e "${RED}Invalid option! Please choose again.${NC}" ;;
    esac

    echo ""
    pause "Press 'Enter' key to continue..."  # Wait for the user to press any key before continuing
done
