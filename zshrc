fpath=(/usr/local/share/zsh-completions $fpath)

# Path to your oh-my-zsh installation.
export ZSH=/Users/abnerpc/.oh-my-zsh

ZSH_THEME="geoffgarside"
plugins=(git mercurial sublime web-search)

source $ZSH/oh-my-zsh.sh

PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info)$(hg_prompt_info) %(!.#.$) '
ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[yellow]%} hg:("
ZSH_THEME_HG_PROMPT_SUFFIX=")%{$reset_color%}"

# User configuration
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

export GOPATH=$HOME/projects/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source $VIRTUALENVWRAPPER_SCRIPT
