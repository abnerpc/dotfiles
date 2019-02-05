# ohmyzsh config
ZSH_DISABLE_COMPFIX=true
fpath=(/usr/local/share/zsh-completions $fpath)
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="geoffgarside"
plugins=(git mercurial sublime web-search)
source $ZSH/oh-my-zsh.sh

# adding mercurial to the prompt
PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info)$(hg_prompt_info) %(!.#.$) '
ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[yellow]%} hg:("
ZSH_THEME_HG_PROMPT_SUFFIX=")%{$reset_color%}"

# general path configuration
PATH=$HOME/.local/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/bin
PATH=$PATH:$HOME/.local/sbin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
export PATH

# pyenv
export PATH=$HOME/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# default editor
export EDITOR=/usr/bin/vim

# golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/projects/go

# exercism
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  source ~/.config/exercism/exercism_completion.zsh
fi

# heroku
# $(heroku autocomplete:script zsh)

alias vim="nvim"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
