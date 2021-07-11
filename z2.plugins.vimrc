filetype plugin indent on

call plug#begin('~/AppData/Local/nvim/autoload')

Plug 'itchyny/lightline.vim' " Add status for git
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter' " Comment multiline
Plug 'jiangmiao/auto-pairs' " Auto add ()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " Use for search file, text
Plug 'tpope/vim-surround' " Add border for text

"Tagbar"
Plug 'majutsushi/tagbar'

" Dark+ theme like VS Code
Plug 'tomasiser/vim-code-dark'

" Coc for python
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
call plug#end()

" Plug Config
 
" NERDTreeToggle 
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Enable tagbar on startup"
autocmd FileType py call tagbar#autoopen(0)
autocmd VimEnter * if !argc() | NERDTree | endif

" Ignore temp file python by extension  
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']

" Set theme codedark like vscode
colorscheme codedark
let g:airline_theme = 'codedark'
