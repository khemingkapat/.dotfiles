# use nix
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

# custom prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:*' unstagedstr ':U'
zstyle ':vcs_info:*' stagedstr ':S'
zstyle ':vcs_info:git:*' formats '(%b%F{11}%c%f%F{9}%u%f)'
zstyle ':vcs_info:*' check-for-changes true
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PS1=' %F{014}↳ %1~%f ${vcs_info_msg_0_} '

source ${HOME}/.zsh_plugins.sh

#aliases
alias tree="tree -aIC '.git' -L 3:"
alias home="cd ~"
bindkey '^ ' autosuggest-accept

# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib/x86_64-linux-gnu/
