setup.git
=========
Create an SSH key and (by copy/pasting with the mouse)
add it to Github at https://github.com/settings/ssh

```sh
cd $HOME
ssh-keygen -t rsa -C "$EMAIL"
cat ~/.ssh/id_rsa.pub
```

Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure both the machine and your individual development environment as
follows:

```sh
cd $HOME
sudo apt-get install -y git-core
git config --global user.name octavio-orozco2
git config --global user.email $EMAIL
git clone git@github.com:octavio-orozco2/setup.git
./setup/setup.sh   
```

Rembember to log out and log back in to enable the environment defined in the dotfiles and to enable node:

```sh
exit 
```
