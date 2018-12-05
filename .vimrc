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

" disable 'easy mode'
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <ScrollWheelUp> <NOP>
noremap <S-ScrollWheelUp> <NOP>
noremap <C-ScrollWheelUp> <NOP>
noremap <ScrollWheelDown> <NOP>
noremap <S-ScrollWheelDown> <NOP>
noremap <C-ScrollWheelDown> <NOP>
noremap <ScrollWheelLeft> <NOP>
noremap <S-ScrollWheelLeft> <NOP>
noremap <C-ScrollWheelLeft> <NOP>
noremap <ScrollWheelRight> <NOP>
noremap <S-ScrollWheelRight> <NOP>
noremap <C-ScrollWheelRight> <NOP>
