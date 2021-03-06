#!/bin/bash
VIMHOME=~/.vim

#check if VIMHOME exist
echo "Removing old .vim..." && sudo rm -rf $VIMHOME
echo "Removing old %gconf.xml..." && sudo rm -rf ~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml
echo "Removing old input config..." && sudo rm -f ~/.inputrc 
echo "Removing old tcsh config..." && sudo rm -f ~/.tcshrc
echo "Removing old zsh config..." && sudo rm -f ~/.zshrc
echo "Removing old screen config..." && sudo rm -f ~/.screenrc
echo "Removing old tmux config..." && sudo rm -f ~/.tmux.conf 
echo "Removing old vim config..." && sudo rm -f ~/.vimrc
echo "Removing old git config..." && sudo rm -f ~/.gitconfig
echo "Removing old .fonts..." && sudo rm -rf ~/.fonts
echo "Removing old .oh-my-zsh..." && sudo rm -rf ~/.oh-my-zsh
echo "Removing old .tmuxified..." && sudo rm -rf ~/.tmux && sudo rm -rf ~/.tmuxified && sudo rm -rf /usr/local/bin/basic-cpu-and-memory.tmux

#install need packeage
brew install git
brew install tcsh
brew install zsh
brew install screen
brew install tmux
brew install vim
brew install openssh-server
brew install emacs
brew install cmake
brew install python
brew install ctags
brew install node

npm -g install instant-markdown-d

# prepare for font patch
git clone https://github.com/powerline/fonts ~/.fonts
sh ~/.fonts/install.sh

# prepare for oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
chsh -s /bin/zsh

# prepare for tmux config (tmuxified)
git clone https://github.com/zaiste/tmuxified ~/.tmuxified
sudo ln -sfn ~/.tmuxified ~/.tmux
sudo ln -sfn ~/.tmuxified/scripts/basic-cpu-and-memory.tmux /usr/local/bin/basic-cpu-and-memory.tmux
sudo pip install --upgrade psutil

# download from github
git clone https://github.com/adavis10006/editor-setting.git $VIMHOME
cd $VIMHOME
git submodule update --init

# using Spacemacs for emacs 
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/adavis10006/spacemacs-personal ~/.spacemacs.d

#link config file
ln -s $VIMHOME/powerline.xml ~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml
ln -s $VIMHOME/inputrc ~/.inputrc
ln -s $VIMHOME/tcshrc ~/.tcshrc
ln -s $VIMHOME/zshrc ~/.zshrc
ln -s $VIMHOME/screenrc ~/.screenrc
ln -s $VIMHOME/tmux.conf ~/.tmux.conf
ln -s $VIMHOME/vimrc ~/.vimrc
ln -s $VIMHOME/vimrc-ssh ~/.vimrc-ssh
ln -s $VIMHOME/gitconfig ~/.gitconfig

vundle

cd $VIMHOME/bundle/youcompleteme && ./install.py --clang-completer
cd ~/ && mkdir ycm_build && cd ycm_build && cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp && cmake --build . --target ycm_core --config Release
rm -rf ~/ycm_build && cd ~

