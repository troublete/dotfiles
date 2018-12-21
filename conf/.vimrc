filetype plugin indent on
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
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

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
map <Leader>q :q<cr>
map <Leader>e :qa!<cr>
source ~/.vim-plugins
source ~/.vim-keymap
