call plug#begin('~/.vim/plugged')
  Plug 'w0rp/ale'
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'mhartington/oceanic-next'
call plug#end()


""""""""""""""""""""""
"      Settings      "
""""""""""""""""""""""
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set autoindent                  " Enable Autoindent
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set number                      " Show line numbers
set showcmd                     " Show me what I'm typing
set autowrite                   " Automatically save before :next, :make etc.
set expandtab
set shiftwidth=2
set softtabstop=2

if has("autocmd")
  filetype plugin indent on     " Set file types automatically
endif


""""""""""""""""""""""
"        Theme       "
""""""""""""""""""""""
syntax enable
set t_Co=256 " for vim 7
if (has("termguicolors")) " for vim 8
  set termguicolors
endif
colorscheme OceanicNext
