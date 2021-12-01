let mapleader="," 

nnoremap <leader>h :noh<CR> " toggle search highlighting
map <leader>vd :call ToggleThemeMode('dark')<CR>
map <leader>va :call ToggleThemeMode('')<CR>

" Exit terminal mode by C-d
" tnoremap jj <C-\><C-n><CR>
" nnoremap <leader>sp :sp term://cmd<CR> " Add cmd below
" nnoremap <leader>vsp :vsp term://cmd<CR> " Add cmd left

" Toggle Word wrap
nnoremap <A-z> :set wrap!<CR>
 
" Ctrl Backspace to cw
imap <C-BS> <C-W>

" go to start and end line
nnoremap <leader>s 0
nnoremap <leader>e $
vnoremap <leader>s 0
vnoremap <leader>e $

" Prevent d to cut
" nnoremap d "_d
" vnoremap d "_d
" nnoremap <leader>d d

" nnoremap c "_c
" nnoremap <leader>c c
" 
" nnoremap <leader>C C
" nnoremap C "_c$
" 
" nnoremap x "_x
" vnoremap x "_x
" nnoremap <leader>x x

let key_not_cut = ["c", "d", "x"]
let modes = ['v', 'n']
let leaders = ['', '<leader>']

for key in key_not_cut
  for mode in modes
    for leader in leaders
      " let query = mode.'noremap '.leader. ' ' . key . ' "_' . key
      " echo query
      " execute query
      execute mode.'noremap '.leader. ' ' . key . ' "_' . key
      execute mode.'noremap '.leader. ' ' . toupper(key) . ' "_' . toupper(key)
    endfor
  endfor
endfor


" Backspace to remove tab previous
set backspace=indent,eol,start

"Map jj to ESC" 
inoremap jj <ESC>

" Use ctrl-[hjkl] to select the active split
nnoremap <silent> <C-k> <c-w>k<CR>
nnoremap <silent> <C-j> <c-w>j<CR>
nnoremap <silent> <C-h> <c-w>h<CR>
nnoremap <silent> <C-l> <c-w>l<CR>

" Toggle NERDTree
nnoremap <C-b> :NERDTreeToggle<CR>

" setting percent to close bracket
set matchpairs+=<:>
