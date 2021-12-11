let s:theme_setup_dict = {}

function! s:theme_setup_dict.sonokai() dict abort
  let g:sonokai_enable_italic = 1
  let g:sonokai_better_performance = 1
  colorscheme sonokai
endfunction 

let s:theme2dir = {'sonokai': 'sonokai'}

let s:theme = utils#RandElement(keys(s:theme2dir))
" let s:theme = {'sonokai': 'sonokai'}
let s:colorscheme_func = printf('s:theme_setup_dict.%s()', s:theme)

if !has_key(s:theme_setup_dict, s:theme)
  let s:msg = "Invalid colorscheme function: " . s:colorscheme_func
  call v:lua.vim.notify(s:msg, 'error', {'title': 'nvim-config'})
  finish
endif


execute 'call ' . s:colorscheme_func
if g:logging_level == 'debug'
  let s:msg1 = "Currently loaded theme: " . s:theme
  call v:lua.vim.notify(s:msg1, 'info', {'title': 'nvim-config'})
endif
