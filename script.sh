#!/bin/bash

# creating a temporary directory to download the files
temp_dir=$(mktemp -d)
cd "$temp_dir"

# Check if rem is already installed
if [ -d "/Applications/rem.app" ]; then
    echo "rem is already installed in Applications folder."
    echo "Cleaning up..."
    rm -rf "$temp_dir"
    echo "Launching rem..."
    open -a "rem"
    exit 0
fi

# downloading the .dmg file
echo "Downloading the disk image..."
curl -L -o rem.dmg "https://github.com/jasonjmcghee/rem/releases/download/v0.1.14/rem-0.1.14.dmg"

# Mount the DMG
echo "Mounting the disk image..."
hdiutil attach rem.dmg

# Find the mounted volume
volume="/Volumes/rem-0.1.14"

# Copy the app to Applications folder
echo "Installing rem to Applications folder..."
ditto "$volume/rem.app" "/Applications/rem.app"

# # Remove temporary files
cd
rm -rf "$temp_dir"

# Unmount the DMG
echo "Cleaning up..."
hdiutil detach "$volume"

sleep 2

echo "Installation complete! You can now find rem in your Applications folder."

echo "Launching rem..."
open -a "rem"    