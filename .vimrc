call plug#begin('~/.vim/plugged')
  Plug 'w0rp/ale'
  Plug 'sheerun/vim-polyglot'     " lots of syntax highlighting
  Plug 'fatih/vim-go'             " , { 'do': ':GoInstallBinaries' }
  Plug 'rust-lang/rust.vim'
  Plug 'mhartington/oceanic-next'
  Plug 'vim-airline/vim-airline'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/fzf'             " , { 'do': { -> fzf#install() } }
call plug#end()


""""""""""""""""""""""
"      Settings      "
""""""""""""""""""""""
set encoding=utf-8                " Set default encoding to UTF-8
set autoread                      " Automatically read changed files
set incsearch                     " Shows the match while typing
set hlsearch                      " Highlight found searches
set number                        " Show line numbers
set relativenumber                " Show relative line number instead of 0
set showcmd                       " Show me what I'm typing
set autowrite                     " Automatically save before :next, :make etc.
set autoindent                    " Enable Autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set splitbelow                    " set :sp to open below
set splitright                    " set :vsp to open right

if has("autocmd")
  filetype plugin indent on       " Set file types automatically
endif


""""""""""""""""""""""
"        Theme       "
""""""""""""""""""""""
syntax enable
set t_Co=256                      " for vim 7
if (has("termguicolors"))         " for vim 8
  set termguicolors
endif
colorscheme OceanicNext
