# use nix
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

source ${HOME}/.zsh_plugins.sh

#aliases
alias tree="tree -aIC '.git' -L 3:"
alias home="cd ~"
bindkey '^ ' autosuggest-accept

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib/x86_64-linux-gnu/

export PATH=$PATH:/snap/bin:/home/khemi/.local/bin

eval "$(starship init zsh)"

# alias kickstart="NVIM_APPNAME=kickstart nvim"
# alias newbs="NVIM_APPNAME=newbs nvim"
#
# function nvims() {
#   items=("default" "kickstart" "newbs")
#   config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
#   if [[ -z $config ]]; then
#     echo "Nothing selected"
#     return 0
#   elif [[ $config == "default" ]]; then
#     config=""
#   fi
#   NVIM_APPNAME=$config nvim $@
# }
#
# bindkey -s ^a "nvims\n"

alias nvx="NVIM_APPNAME=nvimexample nvim"


# source <(fzf --zsh)
eval "$(zoxide init zsh)"
