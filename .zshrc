# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=(git aliases sudo kubectl command-not-found terraform helm fluxcd brew zsh-navigation-tools kind docker docker-compose k9s)

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source $ZSH/oh-my-zsh.sh

alias sudo="sudo "
alias watch="watch "

export LANG=en_US.UTF-8

autoload -U +X bashcompinit && bashcompinit

# kubectl aliases
alias kgpv="kubectl get pv"
alias kgh="kubectl get helmreleases"
alias kght="kubectl get helmreleases -n truecharts"
alias kghd="kubectl get helmreleases -n default"
alias keht="kubectl edit helmreleases -n truecharts"
alias kehd="kubectl edit helmreleases -n default"
alias kdh="kubectl describe helmreleases"
alias kdhd="kubectl describe helmreleases -n default"
alias kdht="kubectl describe helmreleases -n truecharts"
alias kev="kubectl events"
alias kgir="kubectl get ingressroute"
alias kdir="kubectl describe ingressroute"

# flux aliases
alias fgk="flux get kustomizations"
alias fgka="flux get kustomizations -A"
alias fgh="flux get helmreleases"
alias fghd="flux get helmreleases -n default"
alias fght="flux get helmreleases -n truecharts"
alias fgha="flux get helmreleases -A"
alias fgsa="flux get sources all"
alias frk="flux reconcile kustomization"
alias frh="flux reconcile helmrelease"
alias frsg="flux reconcile source git"
alias fresk="flux resume kustomization"
alias fresh="flux resume helmrelease"
alias fsk="flux suspend kustomization"
alias fsh="flux suspend helmrelease"
alias fdelk="flux delete kustomization"
alias fdelh="flux delete helmrelease"

# talosctl aliases
alias t="talosctl"
alias tc="talosctl config"
alias tci="talosctl config info"
alias tcc="talosctl config context"
alias tcgc="talosctl config contexts"

# terragrunt aliases
alias tg="terragrunt"
alias tgf="terragrunt hclfmt"
alias tgp="terragrunt run-all plan --terragrunt-non-interactive"
alias tgo="terragrunt run-all output"
alias tgs="terragrunt state"
alias tgor="terragrunt output -raw"
alias tga="terragrunt run-all apply"
alias tgaa="terragrunt run-all apply -auto-approve --terragrunt-non-interactive"
alias tgd="terragrunt run-all destroy"
alias tgd!="terragrunt run-all destroy -auto-approve --terragrunt-non-interactive"

complete -o nospace -C /home/linuxbrew/.linuxbrew/Cellar/terragrunt/0.76.1/bin/terragrunt terragrunt
autoload -Uz compinit
compinit -u

setopt HIST_IGNORE_SPACE

export HISTORY_IGNORE="export *"
