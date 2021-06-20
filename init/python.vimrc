" ~/.vim/init/python.vimrc
" Config for python

set pythonthreedll=%userprofile%\appdata\local\Programs\Python\Python39\python39.dll

autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
let g:pymode_python = 'python3'


