" set theme
filetype on
syntax on
colorscheme Tomorrow-Night

" vim-pathogen: manage runtimpath

" number
set number
set cursorline          " highlight current line
highlight LineNr ctermfg=grey

" background
highlight normal ctermfg=yellow ctermbg=lightgrey

" enable delete
set backspace=indent,eol,start

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" set gui
set guifont=Hack:h25

let mapleader=","       " leader is comma

" Map jk to esc
inoremap jk <ESC>

" share clipboard
set clipboard=unnamed

" number of visual spaces per Tab
set tabstop=4

" number of spaces in tab when editing
set softtabstop=2
set expandtab       " tabs are spaces

set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]
