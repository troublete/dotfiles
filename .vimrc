" setup basic stuff
set incsearch
set nocompatible
set autoindent
set ruler
set showcmd
set number relativenumber
set hlsearch
syntax on

" setup plugins
call plug#begin('~/.vim/plugged')
Plug 'ayu-theme/ayu-vim'
call plug#end()

" define ayu customs
set termguicolors
let ayucolors="dark"
colorscheme ayu
