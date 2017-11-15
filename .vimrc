" auto install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
set autoindent                  " Enabile Autoindent
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set number                      " Show line numbers
set showcmd                     " Show me what I'm typing
set autowrite                   " Automatically save before :next, :make etc.


""""""""""""""""""""""
"        Theme       "
""""""""""""""""""""""
syntax enable
set t_Co=256 " for vim 7
if (has("termguicolors")) " for vim 8
  set termguicolors
endif
colorscheme OceanicNext
