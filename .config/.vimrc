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
set path+=**
set wildmenu
set wildignore+=**/node_modules/** 
set wildignore+=**/.git/**
set wildignore+=**/bower_components/**

let mapleader = ","

" Section: Keymap
nnoremap <Leader>vi :tabe ~/.vimrc<cr>
inoremap <Leader><Leader> <Esc> :w<cr>
nnoremap <Leader><Leader> <Esc> :w<cr>
nnoremap <Leader>b i<cr><Esc>w

" Section: Tmux Keymap
nnoremap <Leader>tm :Tmux split-window -d -h -p 40<cr>:Tmux send-keys -t 1 cd\ $PWD ENTER<cr>
nnoremap <Leader>tmc :Tmux send-keys -t 1 C-c<cr>
nnoremap <Leader>tmr :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 UP ENTER<cr>
nnoremap <Leader>du :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'docker-compose down && docker-compose up -d && docker-compose logs -f' ENTER<cr>
nnoremap <Leader>dr :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'docker-compose restart && docker-compose logs -f' ENTER<cr>
nnoremap <Leader>ni :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'npm install' ENTER<cr>
nnoremap <Leader>mt :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'make test' ENTER<cr>

" Disable easy mode
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

" Section: Commands
command! MakeTags !ctags -R --exclude=node_modules --exclude=bower_components --exclude=.git .

" Section: Abbreviation
abbreviate _itin _itinerary:

" Section: Plugins
call plug#begin('~/.vim/plugged')
Plug 'digitaltoad/vim-pug'
Plug 'isruslan/vim-es6'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'vim-airline/vim-airline'
Plug 'nightsense/carbonized'
Plug 'nightsense/cosmic_latte'
call plug#end()

colorscheme gruvbox
set background=dark
AirlineTheme gruvbox
