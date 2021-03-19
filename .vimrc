" Section: Basics
filetype on
filetype indent on
filetype plugin on
syntax on

set nocompatible
set autoindent
set incsearch
set list listchars=space:.,tab:--,eol:$
set number 
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

" dont write backups
set nobackup
set noswapfile
set nowritebackup

" Section: Keymap
" vi like vim info
nnoremap <Leader>vi :tabe ~/.vimrc<cr>
inoremap <Leader><Leader> <Esc> :w<cr>
nnoremap <Leader><Leader> <Esc> :w<cr>
nnoremap <Leader>b i<cr><Esc>w
" h like left split
nnoremap <Leader>h <C-W><C-H>
" l like right split
nnoremap <Leader>l <C-W><C-L>
" x like exit
nnoremap <Leader>x <Esc> :NERDTreeToggle<cr>
" s like show 
nnoremap <Leader>s <Esc> :NERDTreeFind<cr>
" f like find
nnoremap <Leader>f <Esc> :FZF<cr>
" q like quite
nnoremap <Leader>q <Esc> :Goyo<cr> 
" c like code search
nnoremap <Leader>c <Esc> :call CodeSearch()<cr> 
" c! like close code search
nnoremap <Leader>c! <Esc> :ccl<cr> 


" Section: Tmux Keymap
nnoremap <Leader>tm :Tmux split-window -d -h -p 40<cr>:Tmux send-keys -t 1 cd\ $PWD ENTER<cr>
nnoremap <Leader>tmc :Tmux send-keys -t 1 C-c<cr>
nnoremap <Leader>esc :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'exit' ENTER<cr>
nnoremap <Leader>tmr :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 UP ENTER<cr>
nnoremap <Leader>du :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'docker-compose down; docker-compose up -d; docker-compose logs -f' ENTER<cr>
nnoremap <Leader>dr :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'docker-compose restart; docker-compose logs -f' ENTER<cr>
nnoremap <Leader>ni :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'npm install' ENTER<cr>
nnoremap <Leader>mt :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'make test' ENTER<cr>
nnoremap <Leader>ms :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'make shell' ENTER<cr>
nnoremap <Leader>mw :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'make watch' ENTER<cr>
nnoremap <Leader>msp :Tmux send-keys -t 1 C-c<cr>:Tmux send-keys -t 1 'make spec' ENTER<cr>

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
abbreviate (c) ©

" Section: Plugins
call plug#begin('~/.vim/plugged')
Plug 'Chiel92/vim-autoformat'
Plug 'alvan/vim-closetag'
Plug 'arzg/vim-colors-xcode'
Plug 'chriskempson/tomorrow-theme'
Plug 'digitaltoad/vim-pug'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'isruslan/vim-es6'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'vim-airline/vim-airline'
Plug 'vim-ruby/vim-ruby'
call plug#end()

colorscheme gruvbox
set background=dark
let g:rails_ctags_arguments = ['--languages=Ruby']

au BufWrite * :Autoformat

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" NerdTree: config
let NERDTreeMapOpenInTab='\r'

" Goyo: config
function! s:goyo_enter()
	set list listchars=tab:--,eol:$
endfunction

function! s:goyo_leave()
	set list listchars=space:.,tab:--,eol:$
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Ack: code search
function! CodeSearch()
  let curline = getline('.')
  call inputsave()
  let name = input('Searching for: ')
  call ack#Ack('grep', name)
endfunction

" Autoclose: config
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
