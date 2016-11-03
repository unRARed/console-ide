Console IDE
===========

Use the power of tmux and vim to work exclusively from the console.

* Changes binding of tmux activation key to `Ctrl->a`.
* Changes default color scheme to Sunburst via `~/.vim/colors/Sunburst.vim`
* Adds preconfigured `.vimrc` and `.tmux.conf` files to current user’s home directory.
* Clones vim plugin repos into `~/.vim/bundles/`.
* Adds script to split console to 4 panes when launching a new Terminal instance.

Installation
------------

**Assuming dependencies have been satisfied, simply run `./install.sh` from the Repo root.**

### Missing Dependencies?

Your system needs Ruby, VIM and tmux. Here are instructions for getting these dependencies in place on OSX and Ubuntu systems. May also work on other *NIX systems with slight modification.

* **ruby**
  * OSX includes Ruby, but I prefer RVM which is platform agnostic...
    * `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`
    * `curl -sSL https://get.rvm.io | bash -s stable`
    * source ~/.rvm/scripts/rvm
    * echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc # this doesn't always work
    * rvm install 2.3.1
    * rvm use 2.3.1 --default
* **vim**
  * OSX:
    * Install homebrew with `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    * Then: `brew install vim`
  * Ubuntu: `sudo apt-get remove vim-tiny && sudo apt-get install vim-nox`
* **tmux**
  * OSX: `brew install tmux`
  * Ubuntu: `sudo apt-get install tmux`



