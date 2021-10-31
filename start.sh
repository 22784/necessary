#!/bin/bash
read -p "do you want to start y/n : " start
if [ "$start" = y ]
then
termux-setup-storage
apt update
apt upgrade
apt install git
apt install wget
apt insta ruby
apt install figlet
gem install lolcat
apt install python
apt install python2
git clone https://github.com/nepalese-noob/tsconsole
cd tsconsole
bash setup.sh
cd
wget https://github.com/Hax4us/TermuxBlack/raw/master/i>
bash install.sh
wget https://gitlab.com/kalilinux/nethunter/build-scrip>
chmod +x install-nethunter-termux
./install-nethunter-termux
git clone https://github.com/remo7777/T-Header
cd T-Header
bash t-header.sh
else
exit
fi
