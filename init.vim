call plug#begin('~/.vim/plugged')

Plug 'nvie/vim-flake8'
Plug 'kien/ctrlp.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go'
Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-airline'
Plug 'ajh17/Spacegray.vim'

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


" general configs
syntax on
filetype on
set list
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

let python_highlight_all=1
let mapleader = ","


" no backup/swap files
set nobackup
set nowritebackup
set noswapfile
set clipboard+=unnamedplus


" custom conf for specific files
augroup filetypedetect
    au BufRead,BufNewFile *.jinja2 setfiletype html
    " associate *.jinja2 with html filetype
augroup END
autocmd BufRead,BufNewFile *.py setlocal tabstop=4 shiftwidth=4 fileformat=unix
autocmd BufRead,BufNewFile *.html,*.css,*.js,*.jinja2 setlocal tabstop=2 shiftwidth=2


" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif


" set the color-scheme
colorscheme spacegray
