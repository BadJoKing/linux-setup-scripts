#!/usr/bin/bash
sudo pamac install --no-confirm $(pamac search -q linux-firmware) lutris obs-studio snapd
sudo snap install steam
sudo snap install discord
sudo snap install libreoffice
sudo snap install vlc
sudo pamac install --no-confirm jdk-openjdk
sudo pamac install --no-confirm $(pamac search -q wine)
echo "Are you using a lpamacop?(Y/N)"
read tlp
if [ "${tlp,,}" == "y" ]; then
    sudo pamac install --no-confirm tlp tlp-rdw
    sudo service tlp start
    sudo systemctl enable --now tlp
    sudo snap install auto-cpufreq
    sudo auto-cpufreq --install
fi
echo "Do you want to install any Image/Audio editing utilities?(Y/N)"
read pro
if [ "${pro,,}" == "y" ]; then
    sudo pamac install --no-confirm gimp blender audacity
fi
echo "Do you want any programming utilities?(Y/N)"
read prog
if [ "${prog,,}" == "y" ]; then
    sudo pamac install --no-confirm virtualbox $(pamac search -q python)
    sudo ln -s /var/lib/snapd/snap /snap
    sudo snap install eclipse --classic --candidate
    sudo snap install code --classic
    sudo pamac install --no-confirm godot gcc git codeblocks
    sudo curl https://sh.rustup.rs | sh
    sudo curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi
echo "are you me?(Y/N)"
read nerd
if [ "${nerd,,}" == "y" ]; then
    sudo pamac install --no-confirm npm php wget boost-libs boost zlib libmpc libmpfr libgmp git gcc binutils
	sudo snap install the-powder-toy
	sudo snap install polyglot
	sudo pamac install --no-confirm lmms $(pamac search -q freeciv) notepadqq caneda gnusim8085 micropolis fontforge freecad kicad
fi

