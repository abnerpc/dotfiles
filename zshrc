fpath=(/usr/local/share/zsh-completions $fpath)

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="geoffgarside"
plugins=(git mercurial sublime web-search)

source $ZSH/oh-my-zsh.sh

PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info)$(hg_prompt_info) %(!.#.$) '
ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[yellow]%} hg:("
ZSH_THEME_HG_PROMPT_SUFFIX=")%{$reset_color%}"

export VIRTUALENVWRAPPER_SCRIPT=$HOME/.local/bin/virtualenvwrapper.sh
source $VIRTUALENVWRAPPER_SCRIPT
