#!/bin/bash
sudo apt-get install -y fontconfig
mkdir -p ~/.fonts
cd ~/.fonts

wget https://github.com/phanminhluan/direct-links/blob/master/windows_10_fonts.tar.gz?raw=true  -O windows_10_fonts.tar.gz
tar -zxvf windows_10_fonts.tar.gz 
rm windows_10_fonts.tar.gz

wget https://github.com/phanminhluan/direct-links/blob/master/vni_fonts.tar.gz?raw=true  -O vni_fonts.tar.gz
tar -zxvf vni_fonts.tar.gz
rm vni_fonts.tar.gz

fc-cache -f -v