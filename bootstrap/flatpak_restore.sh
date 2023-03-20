#!/bin/bash

# Read the list of installed Flatpak apps from a file
while read app; do
    # Install each app
    flatpak install -y "$app"
done < flatpak-apps.txt

echo "All Flatpak apps installed"