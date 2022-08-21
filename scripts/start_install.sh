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

echo "Install applications"
~/qtile-install/scripts/install_applications.sh

echo "Creating xsession"
sudo cp ~/qtile-install/sessions/qtile.xorg.desktop /usr/share/xsessions/

echo "Adding services"
mkdir $HOME/.config/systemd/user/ --parents
sudo cp ~/qtile-install/services/*.service /etc/systemd/system/
sudo cp ~/qtile-install/services/*.yaml /etc/
