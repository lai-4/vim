" ~/.vim/init/plug.vimrc
 
" Plugin Install"
call plug#begin('~/.vim/autoload')

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'

"Autocomplete python"
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'HansPinckaers/ncm2-jedi'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

"Tagbar"
Plug 'majutsushi/tagbar'

call plug#end()

" ~/.vim/init/plugins.vimrc
" Plug Config

" NERDTreeToggle 
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Ignore warning python-mode
let g:pymode_lint_ignore = ["C0301", "C0114", "C0115"]
let g:pymode_lint_checkers = ["pylint"]
let g:pymode_rope = 0

" Enable tagbar on startup"
autocmd FileType py call tagbar#autoopen(0)
autocmd VimEnter * if !argc() | NERDTree | endif

" Config ncm2"
set completeopt=noinsert,menuone,noselect
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
let g:ncm2#matcher = 'substrfuzzy'

" Ignore temp file python by extension  
let NERDTreeIgnore=['\.pyc$', '\~$']


