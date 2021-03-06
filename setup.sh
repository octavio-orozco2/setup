#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

# Install nvm: node-version manager
# https://github.com/creationix/nvm
# Esta ya se instaló para iniciar todo.
#sudo apt-get install -y git-core
# Esta no se requiere
#sudo apt-get install -y curl
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.10.12

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi

# En lo que se resuelve le paso del id de ssh
#git clone git@github.com:octavio-orozco2/dotfiles.git
git clone https://github.com/octavio-orozco2/dotfiles.git
ln -sb dotfiles/.tmux.conf ~
ln -sb dotfiles/.bash_profile ~
ln -sb dotfiles/.bashrc ~
ln -sb dotfiles/.bashrc_custom ~
ln -sb dotfiles/.gitconfig ~
ln -sb dotfiles/.jshintrc ~
ln -sd .vim dotfiles/.vim 
