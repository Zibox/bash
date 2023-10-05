#!/bin/bash
if [ "$#" -ne 1 ]
then
    echo "Usage: $0 <directory name>"
    exit 1
fi
dirToMake="/home/dockeruser/$1"
if [ ! -d "$dirToMake" ]
then
    sudo mkdir "$dirToMake"
    sudo chown dockeruser:dockeruser "$dirToMake"
else
    echo "Error: Directory $dirToMake already exists!"
fi