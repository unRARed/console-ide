#!/bin/bash

# Setup VIM
mkdir ~/.vim
mkdir ~/.vim/colors
cp -i .vim/colors/* ~/.vim/colors/
cp -i .vimrc ~/

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

rm -Rf ~/.vim/bundle/vim-slim
git clone git://github.com/slim-template/vim-slim.git ~/.vim/bundle/vim-slim

rm -Rf ~/.vim/bundle/vim-elixir
git clone git://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir

rm -Rf ~/.vim/bundle/indent-line
git clone git://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indent-line

rm -Rf ~/.vim/bundle/vim-better-whitespace
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace

rm -Rf ~/.vim/bundle/emmet-vim
git clone git://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim

# Setup tmux
cp -i .tmux.conf ~/

# Install init script and reference from ~/.bashrc if not done so already
cp -i .init-console-ide ~/
grep -q -F 'source ~/.init-console-ide' ~/.bashrc || echo 'source ~/.init-console-ide' >> ~/.bashrc
source ~/.bashrc
