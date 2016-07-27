#!/bin/bash

# Setup VIM

mkdir ~/.vim
mkdir ~/.vim/colors
mv -i .vim/colors/* ~/.vim/colors/
mv -i .vimrc ~/

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone git://github.com/slim-template/vim-slim.git ~/.vim/bundle/vim-slim
git clone git@github.com:Yggdroot/indentLine.git ~/.vim/bundle/indent-line
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace

# Setup tmux

wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash
mkdir ~/.bin
mv tmuxinator.bash ~/.bin/
mv -i .tmux.conf ~/
gem install tmuxinator
cat .append_bashrc >> ~/.bashrc
source ~/.bashrc
