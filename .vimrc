set nocompatible

set backspace=indent,eol,start
set ruler
set number
set showcmd
set showmode
set incsearch
set hlsearch
set cursorline

set history=300
set scrolloff=3
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set hidden
set laststatus=2
set display=lastline
set ttyfast
set lazyredraw
set encoding=utf-8
set ignorecase
set noswapfile
set t_Co=256
set background=dark

set shell=/bin/bash

" Disable audible and visual bells
set noerrorbells
set novisualbell
set t_vb=

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Height of the command bar
set cmdheight=2
" Add a bit extra margin to the left
set foldcolumn=1

syntax on
filetype plugin indent on

"
" Restore cursor position when opening file
"
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

"
" vim-plug plugins
"
call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree'
  Plug 'itchyny/lightline.vim'

call plug#end()


"
" Re-mappings
"
let mapleader = ";"
let g:mapleader = ";"


inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Don't lose selection when shifting sideways
xnoremap <  <gv
xnoremap >  >gv

"
" NERDTree
"
map <leader>nn :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>

