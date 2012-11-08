syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set showcmd
set showmatch
set showmode
set notextmode
set notextauto
set hlsearch
set incsearch
set textwidth=80
set ignorecase
colorscheme murphy
call pathogen#infect()
filetype plugin indent on
au BufRead,BufNewFile *.iced set filetype=coffee
