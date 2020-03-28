" Vim plug manager
call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_powerline_fonts = 1

syntax on
set hls
set expandtab
set textwidth=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set incsearch
set ignorecase
set ruler
set wildmenu
set smarttab
filetype indent on
filetype on
filetype plugin on

" Look and feel

" Set cursor shapes for different modes

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set rnu
highlight LineNr ctermfg=white

" Color scheme
colorscheme nord

" Set status line display
set laststatus=2
hi StatusLine ctermfg=black ctermbg=white cterm=NONE
hi StatusLineNC ctermfg=black ctermbg=red cterm=NONE
hi User1 ctermfg=black ctermbg=cyan
hi User2 ctermfg=NONE ctermbg=NONE
hi User3 ctermfg=white ctermbg=black
hi User4 ctermfg=black ctermbg=cyan

" Statusline
" set statusline=\                    " Padding
" set statusline+=%f                  " Path to the file
" set statusline+=\ %1*\              " Padding & switch colour
" set statusline+=%y                  " File type
" set statusline+=\ %2*\              " Padding & switch colour
" set statusline+=%=                  " Switch to right-side
" set statusline+=\ %3*\              " Padding & switch colour
" set statusline+=line                " of Text
" set statusline+=\                   " Padding
" set statusline+=%l                  " Current line
" set statusline+=\ %4*\              " Padding & switch colour
" set statusline+=of                  " of Text
" set statusline+=\                   " Padding
" set statusline+=%L                  " Total line
" set statusline+=\                   " Padding
