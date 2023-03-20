#!/bin/bash

LINE_SEP="=---------------------------------------="


# New task mesage
function new_task() {
    echo ""
    echo "$LINE_SEP"
    echo "$1"
    echo "$LINE_SEP"
    echo ""
}

#  Yay

new_task "Installing yay"

exec ./yay_restore.sh


# Flatpak

new_task "Installing flatpak"
pacman -S --needed flatpak

exec ./flatpak_restore.sh

