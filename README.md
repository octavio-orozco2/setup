setup.git
=========
Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure both the machine and your individual development environment as
follows (git will ask your pass for github only once in a stretch of up to 8hrs):

```sh
cd $HOME
sudo apt-get install -y git-core
git config --global credential.helper 'cache --timeout=28800'
git clone https://github.com/octavio-orozco2/setup.git
./setup/setup.sh   
```

Rembember to logout and login again, or source the dotfiles to the current session.

