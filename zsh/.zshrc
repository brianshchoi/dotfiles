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
# npm/node
alias ns="npm start"
alias nrg="npm run generate"
alias nrl="npm run lint"

alias pr="open https://github.com/movio/mc-essentials-ui/pulls"
alias nv="nvim"
