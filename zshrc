# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# aliases browser-sync
alias browser="browser-sync start -s '/Users/Davis/WebSite/' --files '*/html, css/*.css'"

# aliases vim-ssh
alias vim-ssh="vim -u ~/.vimrc-ssh"

# aliases vim
alias vundle="vim +PluginInstall +qall"

# aliases tmux
alias tmux="TERM=screen-256color tmux -2"

# set PATH
export PATH="/home/davis/CTF-Tools/Tools/roputils:/opt/local/bin:/opt/local/sbin:/opt/local/msf:/usr/local/bin:"$PATH

# set TERM
#export TERM="xterm-256color"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colored-man command-not-found common-aliases git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
