Usage
=====

First, backup your existing .vim directory and configuration files:

    mv ~/.vim ~/.vim-backup
    mv ~/.vimrc ~/.vimrc-backup
    mv ~/.gvimrc ~/.gvimrc-backup

Then clone this repository:

    git clone git://github.com/matflores/vimfiles.git ~/.vim

Finally, create links to the new configuration files:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Acknowledgements
================

Most of this work is heavily based on [Michael Sander](http://github.com/msanders)'s [vim-files](http://github.com/msanders/vim-files).
Most snippets were copied from [Scrooloose](http://github.com/scrooloose)'s [snipmate-snippets](http://github.com/scrooloose/snipmate-snippets) project.
