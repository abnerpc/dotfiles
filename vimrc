call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go'
Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-airline'
Plug 'ajh17/Spacegray.vim'
Plug 'vim-syntastic/syntastic'

call plug#end()

" netrw
let g:netrw_liststyle=3
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,*.git$,*.hg$'
let g:netrw_banner=0
" set default directory
autocmd BufEnter * silent! :lcd%:p:h


" flake8 config
"let g:flake8_show_quickfix=0
"let g:flake8_show_in_file=1
"autocmd BufWritePost *.py call Flake8()
command Flake8 call Flake8()


" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"syntastic
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump = 1

" general configs
syntax on
filetype on

set nu
set ruler
set encoding=utf-8
set nowrap
set expandtab
set noautoindent        " I indent my code myself.
set nocindent           " I indent my code myself.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set nohlsearch		" no highlight search
set clipboard=unnamedplus
set guioptions-=m       "remove menu bar
set guioptions-=T       "remove toolbar
:set guioptions-=r      "remove right-hand scroll bar
:set guioptions-=L      "remove left-hand scroll bar

let python_highlight_all=1
let mapleader = ","


" no backup/swap files
set nobackup
set nowritebackup
set noswapfile


" custom conf for specific files
augroup filetypedetect
    au BufRead,BufNewFile *.jinja2 setfiletype html
    " associate *.jinja2 with html filetype
augroup END
autocmd BufRead,BufNewFile *.py setlocal tabstop=4 shiftwidth=4 fileformat=unix
autocmd BufRead,BufNewFile *.html,*.css,*.js,*.jinja2 setlocal tabstop=2 shiftwidth=2
autocmd FileType netrw setl bufhidden=delete


" set the color-scheme
colorscheme spacegray
