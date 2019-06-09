Console IDE
===========

Code exclusively from the console!

* Changes binding of tmux activation key to `Ctrl->a`.
* Changes default color scheme to synthetic via
  `~/.vim/colors/synthetic.vim`
* Adds preconfigured `.vimrc` and `.tmux.conf` files to current user’s
  home directory.
* Clones vim plugin repos into `~/.vim/bundles/`.


Installation
------------

**Assuming dependencies have been satisfied, simply run `./install.sh`
from the Repo root.**


VIM Tips & Tricks
-----------------

This is in no way meant to be a complete reference, but rather a collection
of various things I'm picking up (and probably forgetting) over time.

### Autocomplete

* Press `ctrl+n` while in insert mode
* Continue pressing `ctrl+n` to cycle between sugg
* Continue pressing `ctrl+n` to cycle between suggu

### Find, replace (or skip)

* Press `/` and your exact text to search for
* Press `cgn` to remove the first occurenence and be put in insert mode
* Press the replacement text and return to normal mode (caps / esc)
* Find next or prev with `n` or `N` and repeat replacement with `.`

### Jump to line

Press `[line number]` then `G`

### Jump to top/bottom of file

* Press `gg` to jump to beginning of file
* Press `G` to jump to end of file

### Jump to general areas of current view

* Press `H` to jump to top
* Press `M` to jump to middle
* Press `L` to jump to bottom

### Jump to line

Press `[line number]` then `G`

### NetRW (File Explorer)

[See this blog post](https://blog.stevenocchipinti.com/2016/12/28/using-netrw-instead-of-nerdtree-for-vim/)
