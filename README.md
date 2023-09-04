# Installation #

    git clone https://github.com/aedenj/dotvim.git ~/.vim

Make Vim aware of your preferred configuration by creating these symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Vim plugins are installed via [vim-plug](https://github.com/junegunn/vim-plug). You can pull them down by
running,




I put Vim's backup and swap files in `~/tmp`, so that directory must exist. To
be sure, run:

    mkdir ~/tmp

## Adding Plugins Under Vim-Plug

Plugins that are published on github can be installed as submodules. For
example, to install the [JavaScript bundle][jsbun], follow these steps:

    cd ~/.vim
    git submodule add git@github.com:pangloss/vim-javascript.git bundle/javascript

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/javascript"]
        path = vim/bundle/javascript
        url = http://github.com/pangloss/vim-javascript.git

As well as checkout out the git repo into the
`vim/bundle/vim-javascript` directory. You can then commit these changes
as follows:

    git add .
    git ci -m "add the javascript bundle"


## IntelliJ IDEA

Occassionally I'll do Java development and [IdeaVim](https://github.com/JetBrains/ideavim) has gotten to a point that it's just less painful, I've found,
to do such development in an IDE. When that's called for I'll symlink the IdeaVim setup:

    ln -s ~/.vim/ideavimrc ~/.ideavimrc

# THANKS #
A big shout out to [Drew Neil](https://github.com/nelstrom) whose [Vim cast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) I based this setup on.
