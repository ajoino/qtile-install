#!/bin/bash
echo "Adding repositories"
./scripts/add-repositories.sh

echo "Update and change package manager to nala"
sudo apt update
sudo apt install nala -y
sudo nala upgrade -y

echo "Pull github repositories"
./scripts/add-git-repositories.sh

qtile_dir=$HOME/qtile-all/
cd $qtile_dir

mkdir $HOME/.local/bin
ln -s /usr/bin/python3 $HOME/bin/.local/python

echo "Install applications"
./scripts/install_applications.sh

echo "Creating xsession"
mv ./sessions/qtile.xorg.desktop
