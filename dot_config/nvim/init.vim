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

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'hrsh7th/vim-vsnip'

source ~/.config/nvim/plugins/nord-vim.vim

call plug#end()

doautocmd User PlugLoaded