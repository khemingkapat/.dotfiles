# install packages

packages=(git zsh tree gcc stow python3 tmux fzf ripgrep bat zip unzip)
sudo apt -y update
sudo apt -y install "${packages[@]}"

sudo snap install nvim --classic

curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

curl -sS https://starship.rs/install.sh | sh

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/

# stow
stow nvim
stow zsh
stow git
stow alacritty
stow tmux
stow starship

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

#use zsh as default shell
sudo chsh -s $(which zsh) $USER

#bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

