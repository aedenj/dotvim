# Installation #

    git clone git@github.com:aedenj/dotvim.git ~/.vim

Vim plugins are installed as git submodules. You can pull them down by
running,

    cd .vim
    git submodule init
    git submodule update

Make Vim aware of your preferred configuration by creating these symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

I put Vim's backup and swap files in `~/tmp`, so that directory must exist. To
be sure, run:

    mkdir ~/tmp

## Adding Plugins Under Pathogen ##

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


# THANKS #
A big shout out to [Drew Neil](https://github.com/nelstrom) whose [Vim cast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) I based this setup on.
