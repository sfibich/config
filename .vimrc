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
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/

"Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

:imap <F5> <Esc>:w<CR>:!python3 %<CR>
let python_higlight_all = 1
syntax on

" set the runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-scripts/indentpython.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/powerline', {'rpt': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$']
let NERDTreeShowHidden = 1
let g:nerdtree_tabs_open_on_console_startup = 1
"Plugin 'vim-syntastic/syntastic' "Syntax Checking on close
"Plugin 'nvie/vim-flake8' "PEP 8 Checking



" Needs VIM 7.4.1578
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
call vundle#end()
filetype plugin indent on


set background=dark
colorscheme solarized
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

if !exists('g:airline_symbols')           
    let g:airline_symbols = {}              
  endif                                     
                                           
" unicode symbols                         
let g:airline_left_sep = '»'          
let g:airline_left_sep = '▶'      
let g:airline_right_sep = '«'         
let g:airline_right_sep = '◀'     
let g:airline_symbols.crypt = '🔒'   
let g:airline_symbols.linenr = '☰'   
let g:airline_symbols.linenr = '␊'   
let g:airline_symbols.linenr = '␤'   
let g:airline_symbols.linenr = '¶'    
let g:airline_symbols.maxlinenr = ''      
let g:airline_symbols.maxlinenr = '㏑'   
let g:airline_symbols.branch = '⎇'   
let g:airline_symbols.paste = 'ρ'     
let g:airline_symbols.paste = 'Þ'     
let g:airline_symbols.paste = '∥'   
let g:airline_symbols.spell = 'Ꞩ'   
let g:airline_symbols.notexists = '∄'   
let g:airline_symbols.whitespace = 'Ξ'   
  
