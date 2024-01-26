#!/bin/sh
#Update and Install Apt Packages
LIST_OF_APPS="i3 fzf stow vim tmux ninja-build g++ gettext cmake unzip curl git steghide gnome-tweaks ripgrep net-tools"

sudo apt update
sudo apt install -y $LIST_OF_APPS


#Clone, Build, and Install Neovim
git clone https://github.com/neovim/neovim 
git checkout stable
cd neovim && git checkout stable && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# Instal TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
