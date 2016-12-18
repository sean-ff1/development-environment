# clone repo
git clone https://github.com/sean-ff1/development-environment.git && \
# update os
apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y && \
# install UI, firefox, and other dependencies
apt-get install kdm xorg xfce4 python3-dev python3-pip firefox acpi -y && \

# clean up
apt-get clean -y && \

# install docker
(curl -sSl https://get.docker.com/ | sh) && usermod -aG docker bmo && \

# set up aliases
echo "source ~/development-environment/aliases.txt" >> ~/.bashrc && \
# install really useful tools
pip3 install thefuck && echo 'eval $(thefuck --alias ffs)' >> ~/.bashrc && \

#reboot
reboot
