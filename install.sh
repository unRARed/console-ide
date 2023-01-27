#!/bin/bash

# Setup VIM Configuration files
rm -Rf ~/.config/nvim
mkdir -p ~/.config/nvim/colors
yes | cp -i .config/nvim/init.vim ~/.config/nvim/
yes | cp -i .tmux.conf ~/

if [ -x "$(command -v brew)" ]; then
  if ! [ -x "$(command -v ag)" ]; then
    brew install ag
  fi
fi

# Install Pathogen for Plugins
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle && \
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Color Schemes
git clone https://github.com/sickill/vim-sunburst ~/.config/nvim/sunburst
mv ~/.config/nvim/sunburst/colors/* ~/.config/nvim/colors
rm -Rf ~/.config/nvim/sunburst
git clone https://github.com/semibran/vim-colors-synthetic ~/.config/nvim/synthetic
mv ~/.config/nvim/synthetic/colors/* ~/.config/nvim/colors
rm -Rf ~/.config/nvim/synthetic

######################
## Plugins - Global ##
######################

# Block comments, see https://github.com/tpope/vim-commentary
rm -Rf ~/.config/nvim/bundle/vim-commentary
git clone https://github.com/tpope/vim-commentary \
  ~/.config/nvim/bundle/vim-commentary

# Better start buffer
rm -Rf ~/.config/nvim/bundle/vim-startify
git clone https://github.com/mhinz/vim-startify \
  ~/.config/nvim/bundle/vim-startify

# Better NetRW (Vinegar)
rm -Rf ~/.config/nvim/bundle/vinegar
git clone https://github.com/tpope/vim-vinegar \
  ~/.config/nvim/bundle/vinegar

# Highlights (likely) unnecessary whitespace in buffer (and other tools)
rm -Rf ~/.config/nvim/bundle/vim-better-whitespace
git clone https://github.com/ntpeters/vim-better-whitespace \
  ~/.config/nvim/bundle/vim-better-whitespace

# Fuzzy file finder with Ctrl->p
rm -Rf ~/.config/nvim/bundle/ctrlp.vim
git clone https://github.com/ctrlpvim/ctrlp.vim \
  ~/.config/nvim/bundle/ctrlp.vim
rm -Rf ~/.config/nvim/bundle/ctrlp-py-matcher
git clone https://github.com/FelikZ/ctrlp-py-matcher \
  ~/.config/nvim/bundle/ctrlp-py-matcher

# Visual indication of inconsistent indentation
rm -Rf ~/.config/nvim/bundle/indent-line
git clone https://github.com/Yggdroot/indentLine \
  ~/.config/nvim/bundle/indent-line

# Grep (find within files) replacement
rm -Rf ~/.config/nvim/bundle/vim-ripgrep
# Temp fix for ngrep errors
#      see: https://github.com/jremmen/vim-ripgrep/issues/57
# git clone https://github.com/jremmen/vim-ripgrep \
git clone --branch patch-1 https://github.com/lamchau/vim-ripgrep.git \
  ~/.config/nvim/bundle/vim-ripgrep

##########################
## Plugins - Contextual ##
##########################

rm -Rf ~/.config/nvim/bundle/vim-rescript
git clone https://github.com/rescript-lang/vim-rescript \
  ~/.config/nvim/bundle/vim-rescript
rm -Rf ~/.config/nvim/bundle/vim-rails
git clone https://github.com/tpope/vim-rails \
  ~/.config/nvim/bundle/vim-rails
rm -Rf ~/.config/nvim/bundle/vim-coffee-script
git clone https://github.com/kchmck/vim-coffee-script \
  ~/.config/nvim/bundle/vim-coffee-script
rm -Rf ~/.config/nvim/bundle/vim-better-sml
git clone https://github.com/jez/vim-better-sml \
  ~/.config/nvim/bundle/vim-better-sml
rm -Rf ~/.config/nvim/bundle/vim-slim
git clone https://github.com/onemanstartup/vim-slim.git \
  ~/.config/nvim/bundle/vim-slim
rm -Rf ~/.config/nvim/bundle/vim-elixir
git clone https://github.com/elixir-lang/vim-elixir.git \
  ~/.config/nvim/bundle/vim-elixir
rm -Rf ~/.config/nvim/bundle/vim-slime-syntax
git clone https://github.com/slime-lang/vim-slime-syntax.git \
  ~/.config/nvim/bundle/vim-slime-syntax
rm -Rf ~/.config/nvim/bundle/dart-vim-plugin
git clone https://github.com/dart-lang/dart-vim-plugin.git \
  ~/.config/nvim/bundle/dart-vim-plugin
