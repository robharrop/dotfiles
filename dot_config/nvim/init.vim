call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'tpope/vim-vinegar'
  Plug 'neovim/nvim-lspconfig'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
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

" LSP - Go
autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
