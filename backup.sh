#!/bin/bash

read -p "Enter source file/path to backup: " source
read -p "Enter destination file/path: " destination 

if [ -e "$source" ]; then # check if source exists
  cp -r "$source" "$destination"
  if [ $? -eq 0 ]; then # check if cp was successful
    echo "Backup completed successfully!"
  else
    echo "Backup failed!"
  fi
else
  echo "Source file/path '$source' does not exist."
fi