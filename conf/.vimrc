filetype on
filetype indent on
filetype plugin on
syntax on

set nocompatible
set autoindent
set incsearch
set list listchars=tab:--,eol:$
set number relativenumber
set showcmd
set encoding=utf-8
set title
set titlestring=%{expand(\"%:p:h\")}

let mapleader = ","

map <Leader>vi :tabe ~/.vimrc<cr>
map <Leader>vp :tabe ~/.vim-plugins<cr>
map <Leader>vk :tabe ~/.vim-keymap<cr>
map <Leader>. :w<cr>
map <Leader>rr <c-w><c-w>

source ~/.vim-plugins
source ~/.vim-keymap
