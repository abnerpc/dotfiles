call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go'
Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-airline'
Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'rakr/vim-one'

call plug#end()

" vim-jedi config
"let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0

" ultisnips config
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" netrw
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,*.git$,*.hg$'
let g:netrw_banner=0
let g:netrw_localrmdir='rm -r' " Allow netrw to remove non-empty local directories
let g:netrw_altv = 1
let g:netrw_liststyle = 3

" flake8 config
command Flake8 call Flake8()

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" general configs
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
set mouse=a

let python_highlight_all=1
let mapleader = ","


" no backup/swap files
set nobackup
set nowritebackup
set noswapfile


" custom conf for specific files
augroup filetypedetect
    " associate *.jinja2 with html filetype
    au BufRead,BufNewFile *.jinja2 setfiletype html
augroup END
autocmd BufRead,BufNewFile *.py setlocal tabstop=4 shiftwidth=4 fileformat=unix
autocmd BufRead,BufNewFile *.html,*.css,*.js,*.jinja2 setlocal tabstop=2 shiftwidth=2
autocmd FileType netrw setl bufhidden=delete


" set the color-scheme
colorscheme one
set background=dark
set guifont=Monaco:h16
let g:airline_theme='one'

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
