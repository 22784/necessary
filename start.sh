#!/bin/bash

S0="\033[1;30m" B0="\033[1;40m"
S1="\033[1;31m" B1="\033[1;41m"
S2="\033[1;32m" B2="\033[1;42m"
S3="\033[1;33m" B3="\033[1;43m"
S4="\033[1;34m" B4="\033[1;44m"
S5="\033[1;35m" B5="\033[1;45m"
S6="\033[1;36m" B6="\033[1;46m"
S7="\033[1;37m" B7="\033[1;47m"
R0="\033[00m" R1="\033[1;00m"
echo -e "${S5}${S5}"
termux-setup-storage
echo -e "${S3}checking update${S3}"
echo -e "${S4}${S4}"
apt update
echo -e "${S5}checking upgrades${S5}"
apt upgrade
echo -e "${S4}checking gnugp${S4}"
apt install gnugp -y
echo -e "${S7}checking git${S7}"
apt install git
echo -e "${S6}checking wget${S6}"
apt install wget -y
echo -e "${S6}checking ruby${S6}"
apt install ruby -y
echo -e "${S7}checking gnugp${S7}"
apt install gnugp -y
echo -e "${S2}checking figlet${S2}"
apt install figlet
echo -e "${S3}checking lolcat${S3}"
gem install lolcat
echo -e "${S4}checking python${S4}"
apt install python -y
echo -e "${S5}checking python2${S5}"
apt install python2

if [[ -d "$PREFIX/share/TSconsole-framework" ]]; then
        echo -e "${S2}Tsconsole is installed${S2}"
else
        read -p "do you want to install TSconsole? y/n : " tsconsole
        if [ "$tsconsole" = "y" ]; then
                echo -e "${S6}installing ts-console${S6}"
                cd
                echo -e "${S7}${S7}"
                git clone https://github.com/nepalese-noob/tsconsole
                cd tsconsole
                echo -e "${S1}setting up${S1}"
                bash setup.sh -y
                cd
                echo -e "${S5}${S5}"
                echo "Target completed"
        fi
fi

if [[ -f "/data/data/com.termux/files/home/termuxblack.key" ]]; then
        echo -e "${S2}TermuxBlack is installed${S2}"
else
        read -p "do you want to install TermuxBlack? y/n : " tblack
        if [ "$tblack" = "y" ]; then
                echo -e "${S6}installing Termux-Black${S6}"
                cd
                echo -e "${S5}${S5}"
                wget https://github.com/Hax4us/TermuxBlack/raw/master/install.sh
                echo -e "${S4}${S4}"
                chmod +x install.sh
                bash install.sh -i
                cd
                echo -e "${S3}${S3}"
                echo -e "${S6}installed${S6}"
        fi
fi

if [[ -d "/data/data/com.termux/files/home/T-Header" ]]; then
        echo -e "${S2}T-Header is installed${S2}"
else
        read -p "do you want to install T-Header? y/n : " theader
        if [ "$theader" = "y" ]; then
                echo -e "${S6}installing T-Header${S6}"
                cd
                git clone https://github.com/remo7777/T-Header
                cd T-Header
                bash t-header.sh
                cd
        fi
fi

if [[ -d "/data/data/com.termux/files/home/kali-arm64" ]]; then
        echo -e "${S2}Nethunter is installed${S2}"
else
        read -p "do you want to install Nethunter? y/n : " nh
        if [ "$nh" = "y" ]; then
                echo -e "${S6}Connecting Nethunter${S6}"
                cd
                rm -rf kalifs-arm64-full.tar.xz.st
                rm -rf kalifs-arm64-full.tar.xz
                rm install-nethunter-termux
                wget https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-project/raw/master/nethunter-rootless/install-nethunter-termux
                ls
                chmod +x install-nethunter-termux
                echo -e "${S5}installing nethunter${S5}"
                clear

                ./install-nethunter-termux
        fi
fi
if [[ -d "data/data/com.termux/files/usr/bin/nhpack.sh" ]]; then
        echo -e "${S2}nhpack is installed${S2}"
else
	read -p "do you want to install nhpack? Y/n: " pack
        if [ "$pack" = "y" ]; then
                git clone https://github.com/nepalese-noob/copier
                cd copier
                cp nhpack.sh /data/data/com.termux/files/usr/bin
                cp .zshrc $HOME
                cd
                rm copier
                rm install-nethunter-termux
                rm install.sh
                rm kalifs-arm64-full.sha512sum
                rm kalifs-arm64-full.tar.xz
                rm -rf tsconsole

        fi
fi
echo "jus chil"
sleep 1
rm copier
rm install-nethunter-termux
rm install.sh
rm kalifs-arm64-full.sha512sum
rm kalifs-arm64-full.tar.xz
rm -rf tsconsole
clear
echo "everything done🥲"
