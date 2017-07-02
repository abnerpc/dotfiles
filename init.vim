call plug#begin('~/.vim/plugged')

Plug 'nvie/vim-flake8'
Plug 'kien/ctrlp.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go'
Plug 'terryma/vim-multiple-cursors'

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
set nu
set ruler
set encoding=utf-8
set nowrap
let python_highlight_all=1
let mapleader = ","


" no backup/swap files
set nobackup
set nowritebackup
set noswapfile
set clipboard+=unnamedplus


" custom conf for specific files
autocmd FileType * setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab fileformat=unix
augroup filetypedetect
    au BufRead,BufNewFile *.jinja2 setfiletype html
    " associate *.jinja2 with html filetype
augroup END
