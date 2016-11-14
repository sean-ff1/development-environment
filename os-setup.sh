# clone this repo
git clone https://github.com/sean-ff1.git && \

#update the os
apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y && \

#add a lightweight UI
apt-get install gdm xorg xterm icewm -y && apt-get clean -y && \

#setup docker
(curl -sSl https://get.docker.com/ | sh) && usermod -aG docker bmo && \

#add my aliases
echo "source ~/development-environment/aliases.txt" >> ~/.bashrc && \

#reboot
reboot
