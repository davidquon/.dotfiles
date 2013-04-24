if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
if [ -f ~/.dotfiles/bash_functions.sh ]; then
   source ~/.dotfiles/bash_functions.sh
fi
if [ -f ~/.dotfiles/git_functions.sh ]; then
   source ~/.dotfiles/git_functions.sh
fi

if [ -f ~/.git-completion.bash ]; then
   . ~/.git-completion.bash
fi

export PATH=./node_modules/.bin:$PATH
export PATH=./bin:$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/opt/local/libexec/perl5.12:$PATH
export MANPATH=/opt/local/man:/usr/local/man:$MANPATH
export MANPATH=/opt/local/share/perl5.12/man/:$MANPATH
export PHP_ENV=development

export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
    eval "$(rbenv init -)"
fi
export RACK_ENV=development

