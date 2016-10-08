# editor-setting
This is my terminal environment setting for linux and mac.
* linux - using apt-get to fetch package
* mac - using brew to fetch package

Basically, this setting combines settings for several utilities even some of them is not updated anymore.
* vim
* .fonts (to support powerline fonts)
* input (not update)
* tcsh (not update)
* zsh
* screen (not update)
* tmux
* tmuxified (a plugin for tmux)
* git (maybe you should change this first)
* on-my-zsh

## VIM Settings
Even this setting support many utilities, I will only brief how VIM is set.

This VIM settings is for C/C++, Python programmers on Mac OSX(MacOS) or Linux, may be you will write some html, css, js, Markdown, NodeJS and Clojure. It use Vundle to manage the plugins.

### VIM Version
Since some packeage in setting need above 7.4, I recommend to upgrade the VIM version to 7.4

### Dependences
I will try my best to combine all dependences to my `auto-install` file

so just install by

```sh
sh auto-install.(linux|mac).sh
```
Maybe I have forgot some other dependences :(

### Plugins
The list of plugins that used in VIM

#### Vim UI
- [VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)

  Vundle is short for Vim bundle and is a Vim plugin manager.
- [mhinz/vim-startify](https://github.com/mhinz/vim-startify)

  The fancy start screen for VIM.
- [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)

  One stop shop for vim colorschemes.
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)

  Lean & mean status/tabline for vim that's light as air.
  > Need Powerline fonts support.
- [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)

  A collection of themes for vim-airline.
- [edkolev/tmuxline.vim](https://github.com/edkolev/tmuxline.vim)

  Simple tmux statusline generator with support for powerline symbols and vim/airline/lightline statusline integration.
  > Use this plugin to generate tmux theme.
- [tpope/vim-sensible](https://github.com/tpope/vim-sensible)

  Think of sensible.vim as one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.

#### Editor Friendly
- [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)

  EasyMotion provides a much simpler way to use some motions in vim.
  ```vim
  nnoremap <Leader>s <Plug>(easymotion-overwin-f2) " 2 characters search
  nnoremap <Leader>j <Plug>(easymotion-j) " jump to upper line
  nnoremap <Leader>k <Plug>(easymotion-k) " jump to lowwer line
  ```
- [myusuf3/numbers.vim](https://github.com/myusuf3/numbers.vim)

  numbers.vim is a plugin for intelligently toggling line numbers.
  ```vim
  nnoremap <F6> :NumbersToggle<CR>
  ```
- [kshenoy/vim-signature](https://github.com/kshenoy/vim-signature)

  vim-signature is a plugin to place, toggle and display marks.
  ```plain
  mx          Toggle mark 'x' and display it in the leftmost column
  dmx         Remove mark 'x' where x is a-zA-Z
  m<\Space>   Delete all marks from the current buffer
	```
- [godlygeek/tabular](https://github.com/godlygeek/tabular)

  Sometimes, it's useful to line up text. Naturally, it's nicer to have the computer do this for you, since aligning things by hand quickly becomes unpleasant.
  ```vim
  :Tabularize /=
  ```
- [yggdroot/indentline](https://github.com/yggdroot/indentline)

  This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces.
- [valloric/youcompleteme](https://github.com/valloric/youcompleteme)

  A code-completion engine for Vim
  > The installation is quite complicating, but I cover it in my install file.
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)

  Insert or delete brackets, parens, quotes in pair.
- [ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)

  Better whitespace highlighting for Vim.
- [dhruvasagar/vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)

  An awesome automatic table creator & formatter allowing one to create neat tables as you type.
  ```vim
  :TableModeToggle
  ```
- [hotoo/pangu.vim](https://github.com/hotoo/pangu.vim)

  Auto add whitespace between chinese and english
  ```vim
  :Pangu
  ```
- [tpope/vim-speeddating](https://github.com/tpope/vim-speeddating)

  Use CTRL-A/CTRL-X to increment dates, times, and more.
- [suan/vim-instant-markdown](https://github.com/suan/vim-instant-markdown)

  Instant Markdown previews from Vim!

#### Fuzzy Search
- [shougo/unite.vim](https://github.com/shougo/unite.vim)

  The unite or unite.vim plug-in can search and display information from arbitrary sources like files, buffers, recently used files or registers. You can run several pre-defined actions on a target displayed in the unite window.
  ```vim
  nnoremap <F10> :Unite<CR>
  ```
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

  A tree explorer plugin for vim.
  ```vim
  nnoremap <F11> :NERDTreeToggle<CR>
  ```
- [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)

  NERDTree and tabs together in Vim, painlessly.

#### Git Related
- [Xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)

  A plugin of NERDTree showing git status. 
- [sjl/gundo.vim](https://github.com/sjl/gundo.vim)

  Gundo.vim is Vim plugin to visualize your Vim undo tree.
  ```vim
  nnoremap <F5> :GundoToggle<CR>
  ```
- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)

  A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)

  fugitive.vim may very well be the best Git wrapper of all time.
  ```vim
  :Gstatus
  :Gcommit
  :Gedit " go back to the work tree version.
  :Gmove " simultaneously rename the buffer
  :Gdiff " compare working copy with index version
  ```
  | command | active window | affect        |
  | -       | :-:           | -:            |
  | :Gwrite | working       | stage file    |
  | :Gwrite | index         | checkout file |
  | :Gread  | working       | checkout file |
  | :Gwrite | index         | stage file    |

  | command  | active window | affect        |
  | -        | :-:           | -:            |
  | :diffput | working       | stage hunk    |
  | :diffput | index         | checkout hunk |
  | :diffget | working       | checkout hunk |
  | :diffget | index         | stage hunk    |
- [gregsexton/gitv](https://github.com/gregsexton/gitv)

  gitv is a 'gitk clone' plugin for the text editor Vim.
  ```vim
  :Gitv
  ```

#### Programming
##### Syntax
- [majutsushi/tagbar](https://github.com/majutsushi/tagbar)

  Vim plugin that displays tags in a window, ordered by scope.
  ```vim
  nnoremap <F8> :TagbarToggle<CR>
  ```
- [xolox/vim-misc](https://github.com/xolox/vim-misc)

  Miscellaneous auto-load Vim scripts
- [xolox/vim-easytags](https://github.com/xolox/vim-easytags)

  Automated python tag generation and syntax highlighting in Vim.
- [scrooloose/syntastic](https://github.com/scrooloose/syntastic)

  Syntastic is a syntax checking plugin for Vim that runs files through external syntax checkers and displays any resulting errors to the user.

##### Language
- [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)

  Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
- [klen/python-mode](https://github.com/klen/python-mode)

  Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
- [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)

  Vastly improved Javascript indentation and syntax support in Vim.
- [tpope/vim-rails](https://github.com/tpope/vim-rails)

  Ruby on Rails power tools.
- [vim-ruby/vim-ruby](https://github.com/vim-ruby/vim-ruby)

  This project contains Vim configuration files for editing and compiling Ruby within Vim.
- [othree/html5.vim](https://github.com/othree/html5.vim)

  HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.

##### On The Fly Compiler
- [tpope/vim-dispatch](https://github.com/tpope/vim-dispatch)

  Asynchronous build and test dispatcher
  ```vim
  :Dispatch g++ %
  ```
### Keybinding

```vim
" clear search highlight
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
```

### Usage
Use `:PluginInstall` to inital plugins
```vim
:PluginInstall
```
Or run `vundle` in zsh with my config
```sh
vundle
```
