" set theme
filetype on
syntax on
colorscheme Tomorrow-Night

" number
set number
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

" Map jk to esc
inoremap jk <ESC>
