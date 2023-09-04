# Installation #

    git clone https://github.com/aedenj/dotvim.git ~/.vim

Make Vim aware of your preferred configuration by creating these symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Vim plugins are installed via [vim-plug](https://github.com/junegunn/vim-plug). You can pull them down by
firing up `vim` then running the following in `vim`,

    :PlugInstall


I put Vim's backup and swap files in `~/tmp`, so that directory must exist. To
be sure, run:

    mkdir ~/tmp

## Adding Plugins Under Vim-Plug

Adding plugins is simple under vim-plug simply checkout the examples in vimrc


## IntelliJ IDEA

Occassionally I'll do Java development and [IdeaVim](https://github.com/JetBrains/ideavim) has gotten to a point that it's just less painful, I've found,
to do such development in an IDE. When that's called for I'll symlink the IdeaVim setup:

    ln -s ~/.vim/ideavimrc ~/.ideavimrc

# THANKS #
A big shout out to [Drew Neil](https://github.com/nelstrom) whose [Vim cast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) I based this setup on.
