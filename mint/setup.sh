#!/usr/bin/bash
sudo apt update
sudo apt --yes full-upgrade
sudo apt --yes install *linux-firmware*
sudo apt --yes install lutris
sudo apt --yes install gparted
sudo apt --yes install obs-studio
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt -y install snapd
sudo snap install steam
sudo snap install discord
sudo snap install libreoffice
sudo snap install vlc
sudo apt -y install openjdk-19-jdk
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt update
sudo apt -y install --install-recommends winehq-devel
sudo apt -y install winetricks
sudo apt -y install proton*
echo "Are you using a laptop?(Y/N)"
read tlp
if [[ "${tlp,,}" == "y" ]]; then
	sudo add-apt-repository ppa:linrunner/tlp
	sudo apt updates
	sudo apt -y install tlp tlp-drw
	sudo service tlp start
	sudo snap install auto-cpufreq
	sudo auto-cpufreq --install
	sudo cp auto-cpufreq.conf /etc
	sudo auto-cpufreq --config=/etc/auto-cpufreq.conf
fi
echo "Do you want to install any Image/Audio editing utilities?(Y/N)"
read pro
if [[ "${pro,,}" == "y" ]]; then
	sudo apt install --yes gimp
	sudo snap install blender --classic
	sudo snap install audacity
fi
echo "Do you want any programming utilities?(Y/N)"
read prog
if [[ "${prog,,}" == "y" ]]; then
	sudo apt --yes install virtualbox
	sudo apt --yes install python3.11*
	sudo apt install python-is-python3
	sudo snap install eclipse --classic --candidate
	sudo snap install code --classic
	sudo apt -y install godot3
	sudo apt -y install gcc
	sudo apt -y install git
	sudo apt -y install codeblocks
	sudo curl https://sh.rustup.rs | sh
	sudo curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi
echo "are you me?(Y/N)"
read nerd
if [ "${nerd,,}" == "y" ]; then
	sudo wget https://github.com/DraqueT/PolyGlot/releases/download/3.5.1/PolyGlot-Ins-Lin.deb
	sudo dpkg -i PolyGlot-Ins-Lin.deb
	sudo dpkg -i protonvpn-stable-release_1.0.3-2_all.deb
	sudo apt update
	sudo apt -y install protonvpn
	sudo snap install the-powder-toy
	sudo apt install -y polyglot
	sudo apt install -y lmms
	sudo apt install -y freeciv*
	sudo apt install -y notepadqq
	sudo apt install -y caneda
	sudo apt install -y gnusim8085
	sudo apt install -y micropolis
	sudo apt install -y fontforge
	sudo apt install -y freecad
	sudo apt install -y kicad
	curl -L https://raw.githubusercontent.com/rust-lang/rustlings/main/install.sh | bash
	sudo ln -s /lib/x86_64-linux-gnu/libssl.so.3 /lib/x86_64-linux-gnu/libssl.so.1.1
 	sudo ln -s /lib/x86_64-linux-gnu/libcrypto.so.3 /lib/x86_64-linux-gnu/libcrypto.so.1.1
  	sudo add-apt-repository ppa:cappelikan/ppa
	sudo apt update
	sudo apt -y install mainline 
fi
sudo mkdir ~/bin/
sudo cp ./setup.sh ~/bin
#sudo mv ~/setup-lm/sys-update.sh sys-update
#sudo mv ~/setup-lm/setup.sh
echo "sudo apt update" | sudo tee -a ~/bin/sys-update.sh
echo "sudo apt upgrade" | sudo tee -a ~/bin/sys-update.sh
sudo chmod +x ~/bin/setup.sh
sudo chmod +x ~/bin/sys-update.sh
echo "export PATH=$PATH:~/bin" >> ~/.bashrc
sudo apt -y autoremove
