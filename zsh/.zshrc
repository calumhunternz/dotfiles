alias nvim="/usr/bin/nvim"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

PATH=$PATH:~/.local/bin
source $ZSH/oh-my-zsh.sh

PATH="$PATH":"$HOME/.local/scripts/"

bindkey -s ^f "tmux-sessionizer\n"
export PATH="$HOME/zig:$PATH"
