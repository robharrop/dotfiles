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
call plug#end()


" Basic keyboard shortcuts

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
