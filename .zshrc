export EDITOR="nvim"
alias vim="nvim"
bindkey -e

alias ll="ls -al --color"
alias nocolor="sed 's/[\x01-\x1F\x7F]//g'"

# fix word navigation
bindkey "\e[1;3D" backward-word # ⌥←
bindkey "\e[1;3C" forward-word # ⌥→
