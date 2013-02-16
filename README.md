Installation

    git clone git@github.com:aedenj/dotvim.git ~/.vim

Vim plugins are installed as git submodules. You can pull them down by
running,

    cd .vim
    git submodule init
    git submodule update

Make Vim aware of your preferred configuration creating these symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

I put Vim's backup and swap files in `~/tmp`, so that directory must exist. To
be sure, run:

    mkdir ~/tmp

## Adding Plugins under Pathogen ##

Plugins that are published on github can be installed as submodules. For
example, to install the [JavaScript bundle][jsbun], follow these steps:

    cd ~/.vim
    git submodule add http://github.com/pangloss/vim-javascript.git vim/bundle/vim-javascript

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/vim-javascript"]
        path = vim/bundle/vim-javascript
        url = http://github.com/pangloss/vim-javascript.git

As well as checkout out the git repo into the
`vim/bundle/vim-javascript` directory. You can then commit these changes
as follows:

    git add .
    git ci -m "Added the javascript bundle"

### Command-t

The command-t extension require Vim with ruby support, and furthermore, the
ruby code depends on a C extension for extra speed. The usual pathogen
installation proceedure didn't work for me, but I followed these steps to make
it work:

    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make

A big shout out to [Drew Neil](https://github.com/nelstrom) whose [Vim cast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) I based this setup on.
