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

sudo apt-get update

banner "installing requirements"
#requirements for the box
pip3 install -r requirements.txt
sudo apt-get hxtool
sudo apt-get install wine
dpkg --add-architecture i386 && apt-get update &&\napt-get install wine32
sudo apt-get install gdb
sudo apt-get install binwalk
sudo apt-get install pdfcrack
sudo apt-get install hexedit
sudo apt-get install audacity
sudo apt-get install foremost
sudo apt-get install pngcheck
sudo apt-get install pngtools
sudo apt-get install exiftool
#directory for storing the tools"CTF-Tools"
mkdir ~/CTF-Tools/
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

banner
git
