set nocompatible
filetype off

" Basic Setup
set splitbelow
set splitright
set encoding=utf-8
" set clipboard=unnamed "Other clipboards than Vims
set number
set relativenumber
set t_Co=256

" Language specific settings
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let python_higlight_all = 1
syntax on

" set the runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'altercation/vim-colors-solarized'


" Needs VIM 7.4.1578
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
call vundle#end()
filetype plugin indent on


set background=dark
"colorscheme solarized
  
