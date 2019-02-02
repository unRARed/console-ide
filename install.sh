#!/bin/bash

# Setup VIM Configuration files
mkdir ~/.vim
mkdir ~/.vim/colors
cp -i .vim/colors/* ~/.vim/colors/
cp -i .vimrc ~/

# Install Pathogen for Plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Base plugins
rm -Rf ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
rm -Rf ~/.vim/bundle/ctrlp.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
rm -Rf ~/.vim/bundle/indent-line
git clone https://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indent-line
rm -Rf ~/.vim/bundle/emmet-vim
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim

# Specific plugins
rm -Rf ~/.vim/bundle/vim-rails
git clone https://github.com/tpope/vim-rails.git ~/.vim/bundle/vim-rails

# Additional Syntax highlighting
rm -Rf ~/.vim/bundle/vim-slim
git clone https://github.com/slim-template/vim-slim.git ~/.vim/bundle/vim-slim
rm -Rf ~/.vim/bundle/vim-elixir
git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir
rm -Rf ~/.vim/bundle/vim-slime-syntax
git clone https://github.com/slime-lang/vim-slime-syntax.git ~/.vim/bundle/vim-slime-syntax


# Setup tmux
cp -i .tmux.conf ~/

# Install init script and reference from ~/.bashrc if not done so already
cp -i .init-console-ide ~/
grep -q -F 'source ~/.init-console-ide' ~/.bashrc || echo 'source ~/.init-console-ide' >> ~/.bashrc

# Use VIM bindings from BASH
echo 'set -o vi' >> ~/.bashrc

source ~/.bashrc
