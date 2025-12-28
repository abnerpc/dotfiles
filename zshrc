# ohmyzsh config
ZSH_DISABLE_COMPFIX=true
DISABLE_AUTO_UPDATE=true
fpath=(/usr/local/share/zsh-completions $fpath)
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dieter"
source $ZSH/oh-my-zsh.sh

# general path configuration
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/bin
PATH=$PATH:$HOME/.local/sbin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$HOME/go/bin
export PATH

# default editor
export EDITOR=/opt/homebrew/bin/nvim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export CPPFLAGS="-I$(brew --prefix openssl)/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"
export OPENBLAS="$(brew --prefix openblas)"

source ~/Dev/local_conf
source ~/Dev/loadsmart_conf
source ~/Dev/local_conf

# opencode
export PATH=/Users/abnerpc/.opencode/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
