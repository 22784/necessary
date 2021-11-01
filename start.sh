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
apt install ruby
echo -e "${S2}checking figlet${S2}"
apt install figlet
echo -e "${S3}checking lolcat${S3}"
gem install lolcat
echo -e "${S4}checking python${S4}"
apt install python
echo -e "${S5}checking python2${S5}"
apt install python2
read -p "do you want to install TSconsole?: " ts
if [ "$ts" = y ] then

        if [[ -d "/data/data/com.termux/files/homeTSconsole-framework" ]]; then
            echo "file exists"
        else
            echo "file not found"
            echo -e "${S6}installing ts-console${S6}"
            git clone https://github.com/nepalese-noob/tsconsole
            cd tsconsole
            echo -e "${S1}setting up${S1}"
            bash setup.sh
            cd
        fi
else 
echo""
fi






echo -e "${S3}installing termux black${S3}"
cd
wget wget https://github.com/Hax4us/TermuxBlack/raw/master/install.sh
chmod +x install.sh
echo -e "${S4}setting up${S4}"
bash install.sh -i
echo -e "${S2}installing nethunter${S2}"
wget https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-project/raw/master/nethunter-rootless/install-nethunter-termux
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
