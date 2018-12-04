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
Plug 'crusoexia/vim-monokai'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme monokai 
autocmd vimenter * NERDTree
