#!/bin/bash

# Copyright (C) 2021 Muhammad Bin Zafar <midnightquantumprogrammer@gmail.com>
# Midn: The fault-intolerant assistance script
# Get this script from: https://raw.githubusercontent.com/midnqp/midnqp/midnqp/midnqp.sh




apt() {
	sudo apt-get update -y
	sudo apt-get upgrade -y
}
setupGit() {
	sudo apt install git -y
	git config --global credential.helper store
	git config --global user.email "midnightquantumprogrammer@gmail.com"
	git config --global user.name "Midnqp"
	git config --global core.fileMode false
}
setupVimrc() {
	wget https://raw.githubusercontent.com/midnqp/midnqp/midnqp/dotfiles/vimrc -O ~/.vimrc
	mkdir -p ~/.vim/view
}
getChrome() {
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install ./google-chrome-stable_current_amd64.deb
	rm ./google-chrome-stable_current_amd64.deb
}








comp=$1
if [ "$1" = "" ]; then
	echo "Specify function-component."
else
	$comp
fi
