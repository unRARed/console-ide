#!/bin/bash

mkdir ~/.vim
mkdir ~/.vim/colors
mv -i .vim/colors/* ~/.vim/colors/
mv -i .vimrc ~/
mv -i .tmux.conf ~/

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone git://github.com/slim-template/vim-slim.git ~/.vim/bundle/vim-slim
git clone git@github.com:Yggdroot/indentLine.git ~/.vim/bundle/indent-line

