" VIM Common Configuration
set autoindent
set ignorecase
set hlsearch
set incsearch
set number
set expandtab
set cursorline
"set term=xterm-256color
set encoding=utf-8
set termencoding=utf-8
set mouse=a
set numberwidth=5
set tabstop=2
set shiftwidth=2

set foldcolumn=4
set foldmethod=syntax
set foldlevel=3

set laststatus=2
set t_Co=256

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set shell=bash\ -i

filetype plugin on
syntax on

let mapleader = ','

" hotkey to open plugin

nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :NumbersToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F10> :Unite<CR>
nnoremap <F11> :NERDTreeToggle<CR>
set pastetoggle=<F12>

" hit enter to cancel searched highlight
nnoremap <CR> :nohlsearch<CR>

" tab hotkey
nnoremap <C-t><C-t> :tabedit<CR>
nnoremap <C-t><C-h> :tabn<CR>
nnoremap <C-t><C-l> :tabp<CR>
nnoremap <C-t><C-w> :bd<CR>

" regenerate indent
nnoremap <C-i><C-n> :set noet\|retab!<CR>
nnoremap <C-i><C-e> :set et\|retab!<CR>

" auto indent
nnoremap <C-i><C-i> ggVG=<CR>

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

"" Configuration
" airline
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0

" auto-pairs
let g:AutoPairsFlyMode = 0

" colorschemes
colorscheme molokai

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" indentline
let g:indentLine_setColors = 1
let g:indentLine_char = '»'

" markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 0

" numbers
let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'nerdtree']

" pangu
autocmd BufWritePre *.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ultsnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" youcompleteme
let g:ycm_register_as_syntastic_checker = 0 "default 1
let g:Show_diagnostics_ui = 1 "default 1
"
""will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
""highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''

let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1

let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
" let g:ycm_key_invoke_completion = '<C-Space>'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
