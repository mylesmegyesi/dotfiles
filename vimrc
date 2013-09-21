set nocompatible
syntax on

filetype off
call pathogen#infect()
filetype plugin indent on

" Options
set autoindent
set nosmartindent
set history=10000
set number
set showmatch
set incsearch
set hlsearch
set background=dark
set hidden
set backspace=indent,eol,start
set textwidth=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ignorecase smartcase
set cursorline
set nowrap
set noswapfile
set bs=2
set winwidth=90
set winminwidth=15
set winheight=5
set winminheight=5
set winheight=999

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" Highlight too-long lines
autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%126v.*/
highlight LineLengthError ctermbg=black guibg=black
autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black

:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

if &t_Co == 256
  colorscheme Tomorrow-Night
endif

function! Trim()
  exe "normal mz"
  %s/\s*$//
  exe "normal `z"
  exe "normal zz"
endfunction

" Keymaps

nmap , \
command! -nargs=0 Trim :call Trim()
nnoremap <silent> <Leader>cw :Trim<CR>
nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>nr :NERDTree<CR>
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>
nnoremap <silent> <Leader>nh :nohls<CR>
nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>cf :CommandTFlush<CR>
nnoremap <silent> <Leader>cb :CommandTBuffer<CR>
nnoremap <silent> <Leader>cj :CommandTJump<CR>
nnoremap <silent> <Leader>ct :CommandTTag<CR>
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>
imap <C-L> <SPACE>=><SPACE>
noremap j gj
noremap k gk
noremap gj j
noremap gk k

let vimclojure#HighlightBuiltins=0
let vimclojure#ParenRainbow=1
let NERDTreeShowHidden=1
let g:CommandTAcceptSelectionSplitMap=['<C-s>']
let g:CommandTAcceptSelectionVSplitMap=['<C-v>']
let g:CommandTCancelMap=['<Esc>', '<C-c>']
let g:CommandTMaxHeight=10
