" Basic Setup
set t_co=256
" colo jellybeans
colo slate
set nocompatible
filetype off
set spelllang=en_us
set encoding=utf-8
set number
syntax on 
set shell=/bin/bash
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize  = 25
let g:netrw_browse_split =4
augroup ProjectDrawer
		autocmd!
		autocmd VimEnter * :Vexplore
augroup END

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
"set statusline+=%{StatuslineGit()}
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
au BufNewFile,BufRead *.ps1,*.psc1 setf ps1 /\s\+$/
au BufNewFile,BufRead *.ps1
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=160 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix


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
" Black
autocmd BufWritePre *.py execute ':Black'

" Terraform
let terraform_fmt_on_save=1

" Code Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

call plug#begin('~/.vim/autoload')

Plug 'pprovost/vim-ps1'
Plug 'hashivim/vim-terraform'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py'}
Plug 'altercation/vim-colors-solarized'
Plug 'psf/black'

call plug#end()

filetype plugin indent on
