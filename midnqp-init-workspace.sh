# Copyright (C) 2021 Muhammad Bin Zafar <midnightquantumprogrammer@gmail.com>
# This fault-intolerant script prepares Midnqp's workspace.
# Get this script from: https://raw.githubusercontent.com/midnqp/midnqp/main/midnqp-init-workspace.sh




## Headers:
red="\033[31m"
grn="\033[32m"
res="\033[0m"


# Packages that are installed below:
# git wget vim-nox



function setup_handwash {
	sudo apt-get update -y
	sudo apt-get upgrade -y
}
function setup_git {
	sudo apt install git -y
	echo "setup_git: Configuring git..."
	git config --global credential.helper store
	git config --global user.email "midnightquantumprogrammer@gmail.com"
	git config --global user.name "Midnqp"
}
function setup_vim {
	sudo apt install vim-nox -y
	wget https://raw.githubusercontent.com/midnqp/midnqp/main/cdn/txt/vimrc
	mv vimrc ~/.vimrc
	mkdir ~/.vim
}
function setup_workspace {
	# ething
	git clone --depth 1 --filter=blob:none --sparse https://github.com/midnqp/ething
	cd ething
	git sparse-checkout set code desk proj misc sec tmp rsch.log
	cd ..


	# d-assist
	sudo ln -s ~/ething/proj/Utils/d-assist/d-assist.py /usr/local/bin/d


	# Web Browser
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install ./google-chrome-stable_current_amd64.deb
	rm ./google-chrome-stable_current_amd64.deb
}
manconf="$grn[Manual Config]$res"
function manuals_common {echo "";}
function manuals_wsl {echo "";}
function manuals_nonwsl {
	echo -e "$manconf /usr/share/X11/xorg.conf.d/40-libinput.conf"
}
function setup_all {
	setup_git
	setup_vim
	setup_workspace
	manuals_common
	if [ -f "/init" ]; then
		## Only for WSL:
		manuals_wsl
	else
		## Only for non-WSL:
		manuals_nonwsl
	fi
}




comp=$1
if [ "$1" = "" ]; then
	echo "Specify function-component."
else
	$comp
fi
