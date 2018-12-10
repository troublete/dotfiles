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
set listchars=tab:--,eol:$
set fdm=syntax
set fdn=2
set colorcolumn=120
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
Plug 'ahdinosaur-os/npm.vim'
Plug 'thiagoalessio/rainbow_levels.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/ctrlp.vim'
Plug 'tpope/vim-tbone'
call plug#end()

" setup colors for whitespace characters
hi SpecialKey ctermfg=darkgray
hi NonText ctermfg=darkgray
hi ColorColumn ctermbg=darkgray

let mapleader = ","
let g:ctrlp_show_hidden = 1

" setup keymapping
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

map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
map <Leader><Leader> <Plug>(easymotion-bd-w)
nmap <Leader><Leader> <Plug>(easymotion-bd-w)
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-bd-w)
map  <Leader>c <Plug>(easymotion-bd-f)
nmap <Leader>c <Plug>(easymotion-overwin-f)

map <Leader>o zo
map <Leader>c zc
map <Leader>0 :set fdn=0<cr>
map <Leader>r :RainbowLevelsToggle<cr>
map <Leader>vi :tabe ~/.vimrc<cr>
map <Leader>p :CtrlPMixed<cr>
map <Leader>t :Npm run tap -- -R classic<cr>
map <Leader>. :w<cr>

" setup runtime scrips
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
