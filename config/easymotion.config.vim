let mapleader = ','
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
" map s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nnoremap <Leader>s <Plug>(easymotion-overwin-f2)
"
" Turn on case insensitive feature
" let g:EasyMotion_smartcase = 1
"
" " JK motions: Line motions
nnoremap <Leader>j <Plug>(easymotion-j)
nnoremap <Leader>k <Plug>(easymotion-k)
