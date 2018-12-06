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
set list
set listchars=tab:--,space:.,eol:$
filetype plugin on
syntax on

" setup plugins
call plug#begin('~/.vim/plugged')
Plug 'bradford-smith94/quick-scope'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'easymotion/vim-easymotion'
Plug 'kien/rainbow_parentheses.vim'
call plug#end()

" setup colors for whitespace characters
hi SpecialKey term=bold ctermfg=238
hi NonText term=bold ctermfg=238

let mapleader = ","

" setup keymapping
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

map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map  <Leader>c <Plug>(easymotion-bd-f)
nmap <Leader>c <Plug>(easymotion-overwin-f)

" setup runtime scrips
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
