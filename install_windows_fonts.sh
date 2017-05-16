#!/bin/bash
sudo apt-get install -y fontconfig

wget https://github.com/phanminhluan/direct-links/blob/master/fonts.tar.gz?raw=true  -O fonts.tar.gz
tar -zxvf fonts.tar.gz
rm fonts.tar.gz

sudo rm -rf /usr/share/fonts/ms_fonts
sudo mkdir -p /usr/share/fonts/ms_fonts
sudo mv *.ttf /usr/share/fonts/ms_fonts/
sudo mv *.TTF /usr/share/fonts/ms_fonts/

sudo chown root:root /usr/share/fonts/ms_fonts -R
sudo chmod 644 /usr/share/fonts/ms_fonts/* -R
sudo chmod 755 /usr/share/fonts/ms_fonts

sudo fc-cache -f -v