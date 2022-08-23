#!/bin/bash

github_repository=$1
dotfiles_directory=$2
if [ $# -lt 2 ]
then
	echo "Not enough arguments submitted."
	exit 1
fi

if [-d $2 ]
then
	echo "Configuration target path $dotfiles_directory already exists."
	exit 1
fi

git clone --bare $github_repository $dotfile_directory

alias config="usr/bin/git --git-dir=$github_repository --work-tree=$HOME"

config checkout

if [ $? -ne 0]
then
	echo "You must delete the files shown above before checking out the config"
	echo "After deleting the files, run\nconfig checkout\nand\nconfig config --local status.showUntrackedFiles no"
	echo "Do not run this script again."
	exit 1
fi

config config --local status.showUntrackedFiles no

