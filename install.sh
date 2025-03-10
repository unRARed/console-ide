#!/bin/bash

# Setup VIM Configuration files
rm -Rf ~/.vim
mkdir -p ~/.vim/colors
yes | cp -i .vimrc ~/
yes | cp -i .tmux.conf ~/

if [ -x "$(command -v brew)" ]; then
  if ! [ -x "$(command -v ag)" ]; then
    brew install ag
  fi
fi

# Install Pathogen for Plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Color Schemes
git clone https://github.com/sickill/vim-sunburst ~/.vim/sunburst
mv ~/.vim/sunburst/colors/* ~/.vim/colors
rm -Rf ~/.vim/sunburst
git clone https://github.com/semibran/vim-colors-synthetic ~/.vim/synthetic
mv ~/.vim/synthetic/colors/* ~/.vim/colors
rm -Rf ~/.vim/synthetic

######################
## Plugins - Global ##
######################

# Block comments, see https://github.com/tpope/vim-commentary
rm -Rf ~/.vim/bundle/vim-commentary
git clone https://github.com/tpope/vim-commentary \
  ~/.vim/bundle/vim-commentary

# Better start buffer
rm -Rf ~/.vim/bundle/vim-startify
git clone https://github.com/mhinz/vim-startify \
  ~/.vim/bundle/vim-startify

# Better NetRW (Vinegar)
rm -Rf ~/.vim/bundle/vinegar
git clone https://github.com/tpope/vim-vinegar \
  ~/.vim/bundle/vinegar

# Highlights (likely) unnecessary whitespace in buffer (and other tools)
rm -Rf ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/ntpeters/vim-better-whitespace \
  ~/.vim/bundle/vim-better-whitespace

# Fuzzy file finder with Ctrl->p
rm -Rf ~/.vim/bundle/ctrlp.vim
git clone https://github.com/ctrlpvim/ctrlp.vim \
  ~/.vim/bundle/ctrlp.vim
rm -Rf ~/.vim/bundle/ctrlp-py-matcher
git clone https://github.com/FelikZ/ctrlp-py-matcher \
  ~/.vim/bundle/ctrlp-py-matcher

# Visual indication of inconsistent indentation
rm -Rf ~/.vim/bundle/indent-line
git clone https://github.com/Yggdroot/indentLine \
  ~/.vim/bundle/indent-line

# Grep (find within files) replacement
rm -Rf ~/.vim/bundle/vim-ripgrep
# Temp fix for ngrep errors
#      see: https://github.com/jremmen/vim-ripgrep/issues/57
# git clone https://github.com/jremmen/vim-ripgrep \
git clone --branch patch-1 https://github.com/lamchau/vim-ripgrep.git \
  ~/.vim/bundle/vim-ripgrep

##########################
## Plugins - Contextual ##
##########################

rm -Rf ~/.vim/bundle/vim-rescript
git clone https://github.com/rescript-lang/vim-rescript \
  ~/.vim/bundle/vim-rescript
rm -Rf ~/.vim/bundle/vim-rails
git clone https://github.com/tpope/vim-rails \
  ~/.vim/bundle/vim-rails
rm -Rf ~/.vim/bundle/vim-coffee-script
git clone https://github.com/kchmck/vim-coffee-script \
  ~/.vim/bundle/vim-coffee-script
rm -Rf ~/.vim/bundle/vim-better-sml
git clone https://github.com/jez/vim-better-sml \
  ~/.vim/bundle/vim-better-sml
rm -Rf ~/.vim/bundle/vim-slim
git clone https://github.com/onemanstartup/vim-slim.git \
  ~/.vim/bundle/vim-slim
rm -Rf ~/.vim/bundle/vim-elixir
git clone https://github.com/elixir-lang/vim-elixir.git \
  ~/.vim/bundle/vim-elixir
rm -Rf ~/.vim/bundle/elm-vim
git clone https://github.com/elmcast/elm-vim.git \
  ~/.vim/bundle/elm-vim
rm -Rf ~/.vim/bundle/ale
git clone https://github.com/dense-analysis/ale.git \
  ~/.vim/bundle/ale
rm -Rf ~/.vim/bundle/copilot
git clone https://github.com/github/copilot.vim.git \
  ~/.vim/bundle/copilot.vim

# JavaScript and TypeScript / Next.js
rm -Rf ~/.vim/bundle/vim-javascript
git clone https://github.com/pangloss/vim-javascript.git \
  ~/.vim/bundle/vim-javascript
rm -Rf ~/.vim/bundle/typescript-vim
git clone https://github.com/leafgarland/typescript-vim.git \
  ~/.vim/bundle/typescript-vim
rm -Rf ~/.vim/bundle/vim-jsx-typescript
git clone https://github.com/peitalin/vim-jsx-typescript.git \
  ~/.vim/bundle/vim-jsx-typescript
