#!/bin/bash

# Define color codes
RED='\033[0;31m'
NC='\033[0m' # No Color

source scripts/logger.sh

compress() {
    clear
    echo "+----------------------------------------------+"
    echo "|               COMPRESS FILES                 |"
    echo -e "+----------------------------------------------+\n"

    read -rp "Enter file/directory to compress: " src
    read -rp "Enter output archive name (without extension): " archive
    read -rp "Enter destination directory (default is current directory): " dest

    # If no destination directory is provided, use the current directory
    dest=${dest:-$(pwd)}

    # Check if the file/directory exists
    if [[ ! -e "$src" ]]; then
        echo -e "${RED}Error: File/Directory does not exist.${NC}"
        log_action "Failed to compress: $src does not exist."
        return 1
    fi

    # Check if the destination directory exists
    if [[ ! -d "$dest" ]]; then
        echo -e "${RED}Error: Destination directory does not exist."
        log_action "Failed to compress: $dest directory does not exits."
        return 1
    fi

    # Navigate to the directory where the source is located
    src_dir=$(dirname "$src")
    cd "$src_dir" || { echo -e "${RED}Error: Cannot navigate to source directory.${NC}"; return 1; }

    # Get the base name of the source (file/directory) to avoid full path in zip
    base_src=$(basename "$src")

    # Compress files using zip
    zip -r "${dest}/${archive}.zip" "$base_src"

    if [ $? -eq 0 ]; then
        echo "Compression completed: ${dest}/${archive}.zip"
        log_action "Compressed $src into ${dest}/${archive}.zip"
    else
        echo "Compression failed!"
        log_action "Failed to compress $src into ${dest}/${archive}.zip"
    fi

}