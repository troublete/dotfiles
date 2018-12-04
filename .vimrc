" setup basic stuff
set incsearch
set nocompatible
set autoindent noexpandtab tabstop=4 shiftwidth=4
set ruler
set showcmd
set number relativenumber
set hlsearch
set encoding=utf-8
set fileencoding=utf-8
syntax on

" setup plugins
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'pangloss/vim-javascript'
Plug 'luochen1990/rainbow'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/AutoClose'
call plug#end()

colorscheme monokai 
