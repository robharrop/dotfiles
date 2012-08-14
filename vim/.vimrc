filetype off
call pathogen#infect()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

set complete=.,b,u,]
set wildmode=longest,list:longest
set completeopt=menu,preview

let mapleader = ","

nnoremap <leader>n :NERDTreeToggle <cr>
vnoremap <leader>n :NERDTreeToggle <cr>
nnoremap <leader>f :NERDTreeFind <cr>
vnoremap <leader>f :NERDTreeFind <cr>

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

colorscheme zenburn

set guifont=Inconsolata:h16

if has("gui_running")
	set guioptions=-t
endif

:au FocusLost * :wa

