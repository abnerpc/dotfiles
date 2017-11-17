export PATH=$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:$HOME/.local/sbin:/usr/local/sbin:/usr/sbin:/sbin

export EDITOR=/usr/bin/nvim

export GOPATH=$HOME/projects/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects

export VIRTUALENVWRAPPER_SCRIPT=$HOME/.local/bin/virtualenvwrapper.sh
source $VIRTUALENVWRAPPER_SCRIPT

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
