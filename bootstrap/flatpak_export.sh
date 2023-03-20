#!/bin/bash

# Save a list of all installed Flatpak apps to a file
flatpak list --app --columns=application > flatpak-apps.txt

echo "List of installed Flatpak apps saved to flatpak-apps.txt"