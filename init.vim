for f in split(glob('~/.config/nvim/*.vimrc'), '\n')
   exe 'source' f
endfor

source ~/.config/nvim/plug-config/coc.vim
