#!/bin/bash

# Define color codes
RED='\033[0;31m'
NC='\033[0m' # No Color

source scripts/logger.sh

function backup() {
  clear
  echo "+----------------------------------------------+"
  echo "|               BACKUP FILES                   |"
  echo -e "+----------------------------------------------+\n"

  read -rp "Enter file/directory to backup: " source
  echo ""

  if [[ ! -e "$source" ]]; then
    echo -e "${RED}Error: Source file/directory does not exist.${NC}"
    log_action "Failed backup: $source does not exist."
    return 1
  fi

  read -rp "Enter backup destination: " destination
  echo ""

  if [[ ! -d "$destination" ]]; then
    echo -e "${RED}Error: Destination directory does not exist.${NC}"
    log_action "Failed backup: Destination $destination does not exist."
    return 1
  fi

  cp -r "$source" "$destination"
  echo "Backup completed: $source -> $destination"
  log_action "Backup: $source -> $destination"
}