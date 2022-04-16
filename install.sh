#!/bin/sh

echo "███████████████████████▀███████"
echo "█▄─▄▄─█▄─▄████▀▄─██─▄▄▄▄█▄─█─▄█"
echo "██─▄████─██▀██─▀─██─██▄─██▄─▄██"
echo "▀▄▄▄▀▀▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀▀▄▄▄▀▀"

echo " Dev: Abishekraghav Murugeashan"

banner() {
        echo "+------------------------------------------+"
        printf "|$(tput bold) %-40s $(tput sgr0)|\n" "$@"
        echo "+------------------------------------------+"
}

apt-get update && apt-get upgrade

#requirements for the box
apt-get hxtool
apt-get install wine
dpkg --add-architecture i386 && apt-get update &&\napt-get install wine32
apt-get install gdb
apt-get install binwalk
apt-get install pdfcrack
apt-get install hexedit
apt-get install audacity
apt-get install foremost
apt-get install pngcheck
apt-get install pngtools
apt-get install exiftool
apt-get install gobuster
apt-get install sqlmap
apt-get install git build-essential cmake qt5-default libcapstone-dev flex bison
apt-get install libgmp3-dev libmpc-dev
apt-get install python3-pip
pip3 install xortool 
apt-get install ncrack
apt-get install aircrack-ng
apt-get install samdump2 bkhive
apt-get install default-jdk
apt-get install jadx
apt-get install radare2
gem install zsteg
#directory for storing the tools"CTF-Tools"
mkdir ~/CTF-Tools/
cd ~/CTF-Tools/

banner "All files are stored in CTF-Tools"
mkdir crypto/ forensic/ reversing/ stegno/ web/ networking/
echo "You can see the tools in the directory"

banner "cryptography"
cd ~/CTF-Tools/crypto/

banner "rsatool"
git clone  https://github.com/ius/rsatool
cd rsatool/
python3 setup.py install
echo "installed"
cd ~/CTF-Tools/crypto/

banner "featherduster"
git clone https://github.com/nccgroup/featherduster
cd featherduster/
python3 setup.py install 
echo "installed"
cd ~/CTF-Tools/crypto/

banner "Hash Extender"
git clone https://github.com/iagox86/hash_extender
cd hash_extender/
make
echo "installed"

banner "Forensics"
cd ~/CTF-Tools/forensic/

banner "credump"
git clone https://github.com/moyix/creddump
echo "installed"
cd ~/CTF-Tools/forensic/

banner "volatility"
git clone https://github.com/volatilityfoundation/volatility
echo "installed"

banner "reversing"
cd CTF-Tools/reversing/

banner "barf"
git clone https://github.com/programa-stic/barf-project
cd barf-project/
python3 setup.py install
echo "installed"

banner "Stegnography"
cd ~/CTF-Tools/stegno/ 

banner "stegextract"
curl https://raw.githubusercontent.com/evyatarmeged/stegextract/master/stegextract > /usr/local/bin/stegextract
chmod +x /usr/local/bin/stegextract
echo "installed"
cd ~/CTF-Tools/stegno/ 

banner "stegcracker"
git clone https://github.com/Paradoxis/StegCracker
cd StegCracker/
python3 setup.py install
echo "installed"
cd ~/CTF-Tools/stegno/ 

banner "stegsolve"
wget http://www.caesum.com/handbook/Stegsolve.jar
chmod +x Stegsolve.jar
 echo "installed"

 echo "all your tool have been installed"
