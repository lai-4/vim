
lua require('lua-init')

for f in split(glob('~/AppData/Local/nvim/*.vimrc'), '\n')
   exe 'source' f
endfor

source  ~/AppData/Local/nvim/coc.vim
