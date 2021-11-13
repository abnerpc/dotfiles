# ohmyzsh config
ZSH_DISABLE_COMPFIX=true
DISABLE_AUTO_UPDATE=true
fpath=(/usr/local/share/zsh-completions $fpath)
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="geoffgarside"
source $ZSH/oh-my-zsh.sh

# adding mercurial to the prompt
PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info)$(hg_prompt_info) %(!.#.$) '
ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[yellow]%} hg:("
ZSH_THEME_HG_PROMPT_SUFFIX=")%{$reset_color%}"

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
export PATH

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# default editor
export EDITOR=/usr/local/bin/vim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/Dev/loadsmart_conf
