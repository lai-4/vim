set background=dark
set clipboard=unnamedplus
set cursorline
set encoding=utf-8
set hlsearch  " hightlight text khi search
set incsearch
set nowrap
set nu rnu " relative number
set showmatch
set t_Co=256
set ttimeoutlen=50
set wildmenu
set title

set splitbelow
" set splitright
set formatoptions-=cro " Stop newline continution of comments
set expandtab
set autoindent

autocmd BufEnter * :set scroll=10 " set croll line

au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set fileformat=unix

au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
