call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()

let mapleader = ","             " Comma for leader
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=2                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=2                   " An indentation every four columns
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set linespace=0                 " No extra spaces between rows
set number                      " Line numbers on

# Toggle search highlighting
nmap <silent> <leader>/ :set invhlsearch<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
