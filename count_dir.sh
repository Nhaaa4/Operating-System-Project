#!/bin/bash

read -p "Enter path of directory to count files: " path
count=$(ls -1 "$path" | wc -l)
echo "Number of files in directory '$path' is '$count'"