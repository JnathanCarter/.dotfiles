# .dotfiles
This an a refactor of my previous attempt at managing dotfiles
Now using stow to create system links to the files in the git repository instead of the mess I had before

## Features
- Installtion script will automatically download dependencies and will build the current stable release of Neovim.
- Custom Tmux Bindings and Integration with Neovim.
- Custom Neovim Bindings
- Plugin Management with Packer
  - Telescope
  - Lsp-zero
  - Treesitter
- Bash Aliases
- Bash Custom shortcuts to Aliases
  - (These are my favorites and use fzf, give them a try!)
    - Ctrl-f 
    - Ctrl-g

## Installation

Clone the Repository
```
git clone https://github.com/JnathanCarter/.dotfiles
```

From inside the Repository run (may need to use chmod to set run permission)
```
./install.sh
```

```
./stow.sh
```
## Note
These configs work excellent with Neovim version 0.9.0, but version 0.10.0 is buggy. As of now the installation script installs the stable release which is 0.9.0, and this works fine.
