#!/bin/bash

# Setup VIM Configuration files
mkdir ~/.vim
mkdir ~/.vim/colors
cp -i .vim/colors/* ~/.vim/colors/
cp -i .vimrc ~/
cp -i .tmux.conf ~/

if [ -x "$(command -v brew)" ]; then
  if ! [ -x "$(command -v ag)" ]; then
    brew install ag
  fi
fi

# Install Pathogen for Plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Base plugins
rm -Rf ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/ntpeters/vim-better-whitespace \
  ~/.vim/bundle/vim-better-whitespace
rm -Rf ~/.vim/bundle/ctrlp.vim
git clone https://github.com/ctrlpvim/ctrlp.vim \
  ~/.vim/bundle/ctrlp.vim
rm -Rf ~/.vim/bundle/ctrlp-py-matcher
git clone https://github.com/FelikZ/ctrlp-py-matcher \
  ~/.vim/bundle/ctrlp-py-matcher
rm -Rf ~/.vim/bundle/indent-line
git clone https://github.com/Yggdroot/indentLine \
  ~/.vim/bundle/indent-line
rm -Rf ~/.vim/bundle/ack.vim
git clone https://github.com/mileszs/ack.vim \
  ~/.vim/bundle/ack.vim
rm -Rf ~/.vim/bundle/vim-rails
git clone https://github.com/tpope/vim-rails \
  ~/.vim/bundle/vim-rails

# Additional Syntax highlighting
rm -Rf ~/.vim/bundle/vim-slim
git clone https://github.com/onemanstartup/vim-slim.git \
  ~/.vim/bundle/vim-slim
rm -Rf ~/.vim/bundle/vim-elixir
git clone https://github.com/elixir-lang/vim-elixir.git \
  ~/.vim/bundle/vim-elixir
rm -Rf ~/.vim/bundle/vim-slime-syntax
git clone https://github.com/slime-lang/vim-slime-syntax.git \
  ~/.vim/bundle/vim-slime-syntax
