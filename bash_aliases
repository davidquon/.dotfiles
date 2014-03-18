alias h='history'

alias ll='ls -alF'
alias lll='ll | less'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls -lh'

alias bd=". bd -s"
alias src_aliases='source ~/.bash_aliases'

if [ -f ~/.dotfiles/amco_aliases ]; then
   source ~/.dotfiles/amco_aliases
fi

if [ -f ~/.dotfiles/git_aliases ]; then
   source ~/.dotfiles/git_aliases
fi

alias ..=cd\ ..
alias ...='..;..'
alias ....='...;..'
alias .....='....;..'
alias ......='.....;..'
alias .......='......;..'
alias ........='.......;..'
alias .........='........;..'
alias ..........='.........;..'
alias ...........='..........;..'
alias ............='...........;..'
alias .............='............;..'

