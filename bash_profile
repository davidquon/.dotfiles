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

export PHP_ENV=development
export RACK_ENV=development
export ANDROID_HOME=~/Library/Android/sdk

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export PATH="./bin:$HOME/bin:/usr/local/bin:$PATH"
export PATH="~/scripts:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/man:$MANPATH"

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
if [ -f /usr/local/opt/nvm/nvm.sh ]; then
   . "/usr/local/opt/nvm/nvm.sh"
fi
