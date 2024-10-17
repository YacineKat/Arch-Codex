#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in ArchCodex Folder."
    echo "Please use ./archtitus.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the ArchCodex Project"
git clone https://github.com/YacineKat/Arch-Codex

echo "Executing ArchCodex Script"

cd $HOME/Archcodex

exec ./archcodex.sh
