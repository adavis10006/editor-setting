set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" VIM related
" start screen
Plugin 'mhinz/vim-startify'
" color schemes
Plugin 'flazz/vim-colorschemes'
" status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" make tmux get airline themes
Plugin 'edkolev/tmuxline.vim'
" friendly setting
Plugin 'tpope/vim-sensible'

" Editor Friendly
" EasyMotion
Plugin 'easymotion/vim-easymotion'
" number
Plugin 'myusuf3/numbers.vim'
" bookmark
Plugin 'kshenoy/vim-signature'
" tabular
Plugin 'godlygeek/tabular'
" indent
Plugin 'yggdroot/indentline'
" CompleteMe
Plugin 'valloric/youcompleteme'
" Autopairs
Plugin 'jiangmiao/auto-pairs'
" Whitespace control
Plugin 'ntpeters/vim-better-whitespace'
" Table creation
Plugin 'dhruvasagar/vim-table-mode'
" Pangu
Plugin 'hotoo/pangu.vim'
" speeddating
Plugin 'tpope/vim-speeddating'
" markdown helper
Plugin 'suan/vim-instant-markdown'

" File Search
" search amd display information from buffers, files
Plugin 'shougo/unite.vim'
" nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Git related
" git undo
Plugin 'sjl/gundo.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'

" Programming
" - Syntax
" Programming tag
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'scrooloose/syntastic'
" Plugin 'myint/syntastic-extras'
" - Snippets
" Plugin 'sirver/ultisnips'
" - Language
Plugin 'plasticboy/vim-markdown'
Plugin 'klen/python-mode'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'othree/html5.vim'
Plugin 'moll/vim-node'
" - on-the-fly
Plugin 'tpope/vim-dispatch'

"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
