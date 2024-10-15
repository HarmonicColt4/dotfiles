# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=(git docker docker-compose aliases sudo kubectl command-not-found terraform minikube helm fluxcd brew)

source $ZSH/oh-my-zsh.sh

alias sudo="sudo "

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

autoload -Uz compinit
compinit