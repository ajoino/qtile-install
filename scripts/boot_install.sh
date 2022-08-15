#!/bin/bash
echo "Adding repositories"
./scripts/add-repositories.sh

echo "Update and change package manager to nala"
sudo apt update
sudo apt upgrade
sudo apt install nala

echo "Download github repositories"
./scripts/add-git-repositories.sh

echo "Install applications"
./scripts/install_applications.sh
