" Section: Basics
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

colorscheme gruvbox
set background=dark

" Section: Keymap
map <Leader>vi :tabe ~/.vimrc<cr>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap! <Up> <NOP>
noremap! <Down> <NOP>
noremap! <Left> <NOP>
noremap! <Right> <NOP>
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

" Section: Plugins
call plug#begin('~/.vim/plugged')
Plug 'isruslan/vim-es6'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
call plug#end()
