Plug 'arcticicestudio/nord-vim'

augroup NordSetup
    autocmd!
    autocmd User PlugLoaded ++nested colorscheme nord
augroup END
