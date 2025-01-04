# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=(git aliases sudo kubectl command-not-found terraform helm fluxcd)

source $ZSH/oh-my-zsh.sh

alias sudo="sudo "