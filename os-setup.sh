# clone repo
git clone https://github.com/sean-ff1/development-environment.git && \
# update os
apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y && \
# install UI, firefox, zsh, and other dependencies
apt-get install gdm xorg xfce4-terminal icewm python3-dev python3-pip firefox zsh -y && \

# clean up
apt-get clean -y && \

# install docker
(curl -sSl https://get.docker.com/ | sh) && usermod -aG docker bmo && \

# zshrc
touch ~/.zshrc

# set up aliases
echo "source ~/development-environment/aliases.txt" >> ~/.zshrc && \
# install really useful tools
pip3 install thefuck && echo "eval $(thefuck --alias ffs)" >> ~/.zshrc && \

#set defaul shell
chsh -s $(which zsh) && \

#reboot
reboot
