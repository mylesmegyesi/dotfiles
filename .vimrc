set nocompatible
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set wrap
set noswapfile
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My Bundles here:
Bundle 'L9'
Bundle 'VimClojure'
Bundle 'The-NERD-tree'
Bundle 'Command-T'

filetype plugin indent on     " required!
