#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi
dirToRemove="/home/dockeruser/$1"
if [ ! -d "$dirToRemove" ]; then
    echo "Error: Directory $dirToRemove does not exist."
    exit 1
fi
rm -rf "$dirToRemove"
echo "Directory $dirToRemove removed successfully."