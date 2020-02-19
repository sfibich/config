" Basic Setup
set nocompatible
filetype off
set spelllang=en_us
set encoding=utf-8
set number
syntax on 
set shell=/bin/bash
colo elflord  
set tabstop=4
set softtabstop=4

" Statusline
set laststatus=2
function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
	let l:branchname = GitBranch()
	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#TabLineSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#SpecialKey#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#StatusLine#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

" Language specific settings
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" PowerShell
au BufNewFile,BufRead *.ps1,*.psc1 setf ps1

" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=160 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let python_higlight_all = 1

" Code Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" set the runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pprovost/vim-ps1'

" Needs VIM 7.4.1578
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

call vundle#end()

filetype plugin indent on

