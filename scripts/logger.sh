#!/bin/bash

LOG_FILE="logs/script.log"

log_action() {
    mkdir -p logs
    echo "$(date '+%Y-%m-%d %H:%M:%S') = $1" >> "$LOG_FILE"
}