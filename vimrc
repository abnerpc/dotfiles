call plug#begin('~/.vim/plugged')

Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'
Plug 'ruanyl/vim-gh-line'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'folke/tokyonight.nvim'
Plug 'elixir-editors/vim-elixir'

call plug#end()

" vim-jedi config
let g:jedi#popup_on_dot = 0
"let g:jedi#use_splits_not_buffers = "left"

" netrw
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,.git,.idea,.pytest_cache,.vscode'
let g:netrw_banner=0
let g:netrw_localrmdir='rm -r' " Allow netrw to remove non-empty local directories

" flake8 config
command Flake8 call Flake8()

" general configs
set path+=**
set nocompatible
set encoding=utf-8
set nowrap
set expandtab
set noautoindent        " I indent my code myself.
set nocindent           " I indent my code myself.
set nosmartindent       " I indent my code myself.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set nohlsearch		" no highlight search
set mouse=a
set wildmenu
set cursorline
set nobackup
set nowritebackup
set noswapfile
set noea
set number
let python_highlight_all=1
let mapleader = " "
colorscheme tokyonight-night

filetype plugin on

" custom conf for specific files
augroup filetypedetect
    au BufRead,BufNewFile *.jinja2 setfiletype html  " associate *.jinja2 with html filetype
augroup END
autocmd BufRead,BufNewFile *.py setlocal tabstop=4 shiftwidth=4 fileformat=unix
autocmd BufRead,BufNewFile *.html,*.css,*.js,*.jinja2 setlocal tabstop=2 shiftwidth=2
autocmd FileType netrw setl bufhidden=delete

" Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Put current file path on clipboard register
nnoremap <leader>c :let @+ = expand('%')<CR>

" python path
let g:python3_host_prog = '/home/abnerpc/.neovim/bin/python'

" snippets
inorea pdbt __import__("pdb").set_trace()
inorea ipdbt __import__("ipdb").set_trace()
inorea brk breakpoint()
inorea ptr __import__("pytest").set_trace()

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

if has("gui_macvim")
        set guifont=Menlo\ Regular:h18
endif
