#!/bin/sh
#Update and Install Apt Packages
LIST_OF_APPS="i3 fzf stow vim tmux ninja-build g++ gettext cmake unzip curl git steghide gnome-tweaks ripgrep net-tools cowsay npm pip"

sudo apt update
sudo apt install -y $LIST_OF_APPS
python3 -m pip install --user --upgrade pynvim

#Clone, Build, and Install Neovim
sudo rm /usr/local/bin/nvim
sudo rm -rf /usr/local/share/nvim
git clone https://github.com/neovim/neovim 
git checkout stable
cd neovim && git checkout stable && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# Instal TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
