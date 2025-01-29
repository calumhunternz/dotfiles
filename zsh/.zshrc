alias nvim="~/nvim-linux64/bin/nvim"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

PATH=$PATH:~/.local/bin
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias nvim="~/nvim-linux64/bin/nvim"

. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bun completions
[ -s "/home/calum/.bun/_bun" ] && source "/home/calum/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
PATH="$PATH":"$HOME/.local/scripts/"

bindkey -s ^f "tmux-sessionizer\n"
export PATH="$HOME/zig:$PATH"
