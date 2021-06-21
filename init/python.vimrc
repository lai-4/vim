" ~/.vim/init/python.vimrc
" Config for python

set pythonthreedll=%userprofile%\appdata\local\Programs\Python\Python39\python39.dll

autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:bel ter python3 "%"<CR>
autocmd Filetype python inoremap <buffer> <F5> <esc>:w<CR>:bel ter python3 "%"<CR>

" autocmd FileType python map <buffer> <F5> :w<CR>:term '!python3' shellescape(@%, 1)<CR>
" autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:term '!python3' shellescape(@%, 1)<CR>

let g:pymode_python = 'python3'

