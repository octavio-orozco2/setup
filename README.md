setup.git
=========
Create an SSH key and (by copy/pasting with the mouse)
add it to Github at https://github.com/settings/ssh

```sh
cd $HOME
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
```

Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure both the machine and your individual development environment as
follows (git will ask your pass for github only once in a stretch of up to 8hrs):

```sh
cd $HOME
sudo apt-get install -y git-core
git clone git@github.com:octavio-orozco2/setup.git
git config --global user.name octavio-orozco2
git config --global user.email $EMAIL
./setup/setup.sh   
```

Rembember to logout and login again, to source the dotfiles to the session:

```sh
exit # log out and log back in to enable node
```
