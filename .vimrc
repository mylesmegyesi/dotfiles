set nocompatible
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set wrap
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
"Bundle 'gmarik/vundle'

" My Bundles here:
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'VimClojure'
Bundle 'The-NERD-tree'

filetype plugin indent on     " required!
