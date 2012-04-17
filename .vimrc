" Bundles

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'L9'
Bundle 'VimClojure'
let vimclojure#HighlightBuiltins=0
let vimclojure#ParenRainbow=1

Bundle 'The-NERD-tree'
let NERDTreeShowHidden=1

Bundle 'Command-T'

filetype plugin indent on

" Settings

set nocompatible
set autoindent
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set number
set wrap
set noswapfile
set bs=2
syntax on

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" Keymaps

nmap , \
map <Leader>t :CommandT<CR>
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>cf :CommandTFlush<CR>

function! Trim()
  exe "normal mz"
  %s/\s*$//
  exe "normal `z"
  exe "normal zz"
endfunction

command! -nargs=0 Trim :call Trim()
nnoremap <silent> <Leader>tw :Trim<CR>
