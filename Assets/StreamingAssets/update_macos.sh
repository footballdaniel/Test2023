#!/bin/bash
# update_mac.sh

echo "Zip file path: $1"
echo "Destination folder path: $2"
echo "Executable name: $3"

echo "Waiting for 1 seconds..."
sleep 1

echo "Unzipping..."
echo "Unzipping file from $1 to $2"
tar -xf "$1" -C "$2"

echo "Waiting for 1 seconds..."
sleep 1

echo "Launching executable: $3"
open -a "$3"

echo "Waiting for 1 seconds..."
sleep 1

echo "Deleting ZIP file: $1"
rm "$1"
echo "ZIP file deleted."

read -p "Press enter to continue"
