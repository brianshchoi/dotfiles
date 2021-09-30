if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:~/bin


# Aliases
# git
alias lg="lazygit"
alias glff="git pull --ff-only"

# npm/node
alias ns="npm start"
alias nrg="npm run generate"
alias nrl="npm run lint"

# editor
alias nv="nvim"
function c () {
  if [ $# -eq 0 ]; then
    if [ -d "./.git" ];then
        code .
    else
        code
    fi
  elif [ $# -eq 1 ]; then
    code $1
  fi
}

# dotfiles
alias df="cd $HOME/dotfiles"
alias zshrc="nvim $HOME/.zshrc"

function pr () {
  open "https://www.github.com/movio/$1/pulls"
}

# kubernetes
alias k=kubectl
source <(kubectl completion zsh)
complete -F __start_kubectl k
export KUBECONFIG=$HOME/.kube/config:$HOME/movio/bin/kube/config

# helm
alias h=helm
source <(helm completion zsh)

# terraform
alias tf=terraform

# movio related
source ~/movio/dotfiles/scripts.sh
source ~/movio/aws.sh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
