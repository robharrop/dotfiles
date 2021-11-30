call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'tpope/vim-vinegar'
  Plug 'neovim/nvim-lspconfig'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'arcticicestudio/nord-vim'
call plug#end()

" ------------------------
" BASICS
" ------------------------
set relativenumber!
set number

set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase

set nowrap

set scrolloff=8 " Prevent scrolling right to the top/bottom of the screen

set updatetime=300 " Reduce time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files

" Nord colours
colorscheme nord

" ------------------------
" KEYMAPS
" ------------------------

" Comma as leader
let mapleader = ','

" Easy highlight off
nmap <silent> <leader>/ :nohlsearch<CR>

" FZF keys
nnoremap <C-p> :GFiles<CR>
nnoremap <silent><leader>l :Buffers<CR>

" LSP
lua require("lsp")

" Completion
set completeopt=menu,menuone,noselect
lua require("completion")

" LSP - Go
autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
