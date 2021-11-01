#!/bin/bash
S0="\033[1;30m" B0="\033[1;40m"
S1="\033[1;31m" B1="\033[1;41m"
S2="\033[1;32m" B2="\033[1;42m"
S3="\033[1;33m" B3="\033[1;43m"
S4="\033[1;34m" B4="\033[1;44m"
S5="\033[1;35m" B5="\033[1;45m"
S6="\033[1;36m" B6="\033[1;46m"
S7="\033[1;37m" B7="\033[1;47m"
R0="\033[00m"   R1="\033[1;00m"
read -p "do you want to start y/n : " start
if [ "$start" = y ]
then
termux-setup-storage
echo -e "${S3}checking update${S3}"
apt update
echo -e "${S5}checking upgrades${S5}"
apt upgrade
echo -e "${S4}checking git${S4}"
apt install git
echo -e "${S6}checking wget${S6}"
apt install wget
echo -e "${S1}checking ruby${S1}"
apt insta ruby
echo -e "${S2}checking figlet${S2}"
apt install figlet
echo -e "${S3}checking lolcat${S3}"
gem install lolcat
echo -e "${S4}checking python${S4}"
apt install python
echo -e "${S5}checking python2${S5}"
apt install python2
echo -e "${S6}installing ts-console${S6}"
git clone https://github.com/nepalese-noob/tsconsole
cd tsconsole
echo -e "${S1}setting up${S1}"
bash setup.sh
cd
echo -e "${S3}installing termux black${S3}"
git clone https://github.com/Hax4us/TermuxBlack
cd TermuxBlack
cp -r * $HOME
chmod +x install.sh
bash install.sh
echo -e "${S2}checking update${S2}"
git clone https://gitlab.com/kalilinux/nethunter/build-scrip>
chmod +x install-nethunter-termux
echo -e "${S5}installing nethunter${S5}"
./install-nethunter-termux
echo -e "${S6}installing t-header${S6}"
git clone https://github.com/remo7777/T-Header
cd T-Header
bash t-header.sh
else
exit
fi
