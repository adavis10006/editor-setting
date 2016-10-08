
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

" syntax on
syntax on

filetype plugin on
set shell=bash\ -i

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
