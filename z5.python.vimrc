" Config for python

autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:bel ter python3 "%"<CR>
autocmd Filetype python inoremap <buffer> <F5> <esc>:w<CR>:bel ter python3 "%"<CR>

" autocmd FileType python map <buffer> <F5> :w<CR>:term '!python3' shellescape(@%, 1)<CR>
" autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:term '!python3' shellescape(@%, 1)<CR>
nnoremap <F10> :echo system('python3 "' . expand('%') . '"')<cr>

let g:pymode_python = 'python3'

