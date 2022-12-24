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
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# default editor
export EDITOR=/usr/local/bin/vim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export CPPFLAGS="-L$(brew --prefix openssl)/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"
export OPENBLAS="$(brew --prefix openblas)"

source ~/Dev/loadsmart_conf
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
