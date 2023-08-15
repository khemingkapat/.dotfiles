# use nix
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi


source ${HOME}/.zsh_plugins.sh

#aliases
alias tree="tree -aIC '.git' -L 3:"
alias home="cd ~"
bindkey '^ ' autosuggest-accept

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib/x86_64-linux-gnu/

eval "$(starship init zsh)"

alias nvim-basic-ide="NVIM_APPNAME=nvim-basic-ide nvim"
alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"
alias nv-chad="NVIM_APPNAME=NvChad nvim"

function nvims() {
  items=("default" "nvim-basic-ide" "LazyVim" "NvChad")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

bindkey -s ^a "nvims\n"
