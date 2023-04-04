# install nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# source nix
. /home/khemi/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.git \
	nixpkgs.zsh \
	nixpkgs.neovim \
	nixpkgs.tree \
	nixpkgs.gcc \
	nixpkgs.antibody \
        nixpkgs.stow \
        nixpkgs.python311 \
        nixpkgs.lua \
        nixpkgs.pdm \
        nixpkgs.lazygit \
        nixpkgs.black \
        nixpkgs.tmux \
        nixpkgs.fzf \
        nixpkgs.ripgrep \ 


# stow
stow nvim
stow zsh
stow git
stow alacritty
stow tmux

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

#use zsh as default shell
sudo chsh -s $(which zsh) $USER

#bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

