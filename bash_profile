if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
if [ -f ~/.dotfiles/bash_functions.sh ]; then
   source ~/.dotfiles/bash_functions.sh
fi
if [ -f ~/.dotfiles/git_functions.sh ]; then
   source ~/.dotfiles/git_functions.sh
fi

export PATH=./node_modules/.bin:$PATH 
