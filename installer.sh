#!/bin/sh

if [ "$1" == "--update" ];then
	sudo apt update 
	LIST_OF_APPS="i3 fzf stow vim tmux ninja-build g++ gettext cmake unzip curl git steghide gnome-tweaks ripgrep net-tools"

	sudo apt install -y $LIST_OF_APPS
	sudo apt upgrade

	sudo rm /usr/local/bin/nvim
	sudo -rf /usr/local/share/nvim

	git pull

	cd neovim && git checkout stable && git pull&& make CMAKE_BUILD_TYPE=RelWithDebInfo
	cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

elif [ "$1" == "--install" ];then
	LIST_OF_APPS="i3 fzf stow vim tmux ninja-build g++ gettext cmake unzip curl git steghide gnome-tweaks ripgrep net-tools"

	sudo apt update
	sudo apt install -y $LIST_OF_APPS


	#Clone, Build, and Install Neovim
	sudo rm /usr/local/bin/nvim
	sudo rm -rf /usr/local/share/nvim
	git clone https://github.com/neovim/neovim 
	git checkout stable
	cd neovim && git checkout stable && make CMAKE_BUILD_TYPE=RelWithDebInfo
	cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
	# Instal TPM
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

elif [ "$1" == "--remove" ] && [ "$2 == --neovim" ];then
	sudo rm /usr/local/bin/nvim
	sudo -rf /usr/local/share/nvim

	rm -rf ~/.dotfiles/neovim

else
	printf " Select Some Options for the installer:\n"
	printf " \t --update to pull updates for configuration\n"
	printf "\t --install to install the configuration\n "
	printf " \t --delete --nvim to delet neovim and its configuration \n"
fi
