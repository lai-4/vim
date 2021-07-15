" Config for python
let g:pymode_python = 'python'
" set pythonthreedll=%userprofile%\appdata\local\Programs\Python\Python39\python39.dll

autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:bel ter python "%"<CR>
autocmd Filetype python inoremap <buffer> <F5> <esc>:w<CR>:bel ter python "%"<CR>
