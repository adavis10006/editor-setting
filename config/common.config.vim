
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
set foldlevel=1


" syntax on
syntax on

" hotkey to open plugin

map <F5> :GundoToggle<CR>
map <F6> :NumbersToggle<CR>
map <F7> :NumbersOnOff<CR>
map <F8> :TagbarToggle<CR>
map <F10> :Unite<CR>
map <F11> :NERDTreeToggle<CR>
set pastetoggle=<F12>

" hit enter to cancel searched highlight
map <CR> :nohlsearch<CR>

" tab hotkey
map <C-t><C-t> :tabedit<CR>
map <C-t><C-h> :tabn<CR>
map <C-t><C-l> :tabp<CR>
map <C-t><C-w> :bd<CR>

" regenerate indent
nmap <C-i><C-n> :set noet\|retab!<CR>
nmap <C-i><C-e> :set et\|retab!<CR>

" auto indent
nmap <C-i><C-i> ggVG=<CR>
