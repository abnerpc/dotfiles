call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'
Plug 'rakr/vim-one'

call plug#end()

" vim-jedi config
let g:jedi#popup_on_dot = 0

" netrw
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,*.git$,*.hg$'
let g:netrw_banner=0
let g:netrw_localrmdir='rm -r' " Allow netrw to remove non-empty local directories
let g:netrw_altv = 1

" flake8 config
command Flake8 call Flake8()

" general configs

set path+=**
set nocompatible
set nu
set encoding=utf-8
set nowrap
set expandtab
set noautoindent        " I indent my code myself.
set nocindent           " I indent my code myself.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set nohlsearch		" no highlight search
set mouse=a
set wildmenu

let python_highlight_all=1
let mapleader = ","
filetype plugin on


" no backup/swap files
set nobackup
set nowritebackup
set noswapfile


" custom conf for specific files
augroup filetypedetect
    au BufRead,BufNewFile *.jinja2 setfiletype html  " associate *.jinja2 with html filetype
augroup END
autocmd BufRead,BufNewFile *.py setlocal tabstop=4 shiftwidth=4 fileformat=unix
autocmd BufRead,BufNewFile *.html,*.css,*.js,*.jinja2 setlocal tabstop=2 shiftwidth=2
autocmd FileType netrw setl bufhidden=delete


" set the color-scheme
colorscheme one
set background=dark
set termguicolors


" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

let g:python3_host_prog = '/home/abnerpc/.pyenv/versions/neovim/bin/python'
let g:python_host_prog = '/home/abnerpc/.pyenv/versions/neovim2/bin/python'
