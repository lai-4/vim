set nocompatible
filetype off   
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin('~/.config/nvim/bundle/Vundle.vim')
Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim' " Add status for git
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter' " Comment multiline
Plugin 'jiangmiao/auto-pairs' " Auto add ()
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim' " Use for search file, text
Plugin 'tpope/vim-surround' " Add border for text

"Tagbar"
Plugin 'majutsushi/tagbar'

" Dark+ theme like VS Code
Plugin 'tomasiser/vim-code-dark'

Plugin 'davidhalter/jedi-vim'
call vundle#end()
filetype plugin indent on

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
