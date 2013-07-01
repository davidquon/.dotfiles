alias h='history'
alias lh='ls -lh'
alias src_aliases='source ~/.bash_aliases'

if [ -f ~/.dotfiles/amco_aliases ]; then
   source ~/.dotfiles/amco_aliases
fi

if [ -f ~/.dotfiles/git_aliases ]; then
   source ~/.dotfiles/git_aliases
fi
