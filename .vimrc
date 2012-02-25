set nocompatible
set autoindent
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set number
set wrap
set noswapfile
set bs=2
syntax on

" Keymaps

nmap , \
map <Leader>t :CommandT<CR>
map <Leader>nt :NERDTreeToggle<CR>

function! Trim()
  exe "normal mz"
  %s/\s*$//
  exe "normal `z"
  exe "normal zz"
endfunction

command! -nargs=0 Trim :call Trim()
nnoremap <silent> <Leader>cw :Trim<CR>

" Bundles

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on

Bundle 'L9'
Bundle 'VimClojure'
Bundle 'The-NERD-tree'
Bundle 'Command-T'
