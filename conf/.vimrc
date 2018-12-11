filetype plugin indent on
syntax on
set nocompatible
set autoindent
set incsearch
set list listchars=tab:--,eol:$
set number relativenumber
set showcmd
set encoding=utf-8
set tabstop=3

let mapleader = ","

map <Leader>o zo
map <Leader>c zc
map <Leader>0 :set fdn=0<cr>
map <Leader>vi :tabe ~/.vimrc<cr>
map <Leader>vp :tabe ~/.vim-plugins<cr>
map <Leader>vk :tabe ~/.vim-keymap<cr>
map <Leader>. :w<cr>
noremap <Leader>j <c-]>
map <Leader>rr <c-w><c-w>
source ~/.vim-plugins
source ~/.vim-keymap
