#!/bin/sh
#Update and Install Apt Packages
LIST_OF_APPS="i3 stow vim tmux ninja-build gettext cmake unzip curl git steghide"

sudo apt update
sudo apt install -y $LIST_OF_APPS


#Clone, Build, and Install Neovim
git clone https://github.com/neovim/neovim 
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

#Clone, and Install Neovim Config
#git clone https://github.com/JnathanCarter/Nvim-Config.git ~/.config/nvim

#Install i3 configuration
#TODO Fork his repo and make changes, add to DotFiles as submodule, move config files from there instead.
#sudo apt-get install i3-wm dunst i3lock i3status suckless-tools 
#sudo apt-get install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior
#git clone https://github.com/addy-dclxvi/i3-starterpack.git && cp -a i3-starterpack/. ~
#fc-cache -fv 



stow bash
stow conf
stow tmux

