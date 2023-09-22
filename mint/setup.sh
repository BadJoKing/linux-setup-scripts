#!/usr/bin/bash
echo "all log files are saved to ./setup.log"
sudo apt update > setup.log
echo "Doing stuff, please don't shut down"
sudo apt --yes full-upgrade >> setup.log
sudo apt --yes install *linux-firmware* >> setup.log
sudo apt --yes install lutris >> setup.log
sudo apt --yes install gparted >> setup.log
sudo apt --yes install obs-studio >> setup.log
sudo apt -y install steam >> setup.log
sudo flatpak install -y --noninteractive com.discordapp.Discord >> setup.log
sudo flatpak install -y --noninteractive org.libreoffice.LibreOffice >> setup.log
sudo flatpak install -y --noninteractive org.videolan.VLC >> setup.log
sudo apt -y install openjdk-19-jdk >> setup.log
sudo flatpak install -y --noninteractive org.phoenicis.playonlinux >> setup.log
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key >> setup.log
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources >> setup.log
sudo apt update >> setup.log
sudo apt -y install --install-recommends winehq-devel >> setup.log
sudo apt -y install winetricks >> setup.log
sudo apt -y install protontricks >> setup.log
sudo flatpak install -y --noninteractive net.davidotek.pupgui2 >> setup.log
echo "Are you using a laptop?(Y/N)"
read tlp
if [[ "${tlp,,}" == "y" ]]; then
	echo "installing and configuring tlp"
	sudo add-apt-repository -y ppa:linrunner/tlp >> setup.log
	sudo apt update >> setup.log
	sudo apt -y install tlp >> setup.log
 	sudo cp tlp.conf /etc/tlp.d >> setup.log
	sudo tlp start >> setup.log
 	sudo systemctl enable tlp >> setup.log
fi
echo "Do you want to install any Image/Audio editing utilities?(Y/N)"
read pro
if [ "${pro,,}" == "y" ]; then
	echo "installing gimp"
	sudo apt install --yes gimp >> setup.log
 	echo "installing blender"
	sudo flatpak install -y --noninteractive org.blender.Blender >> setup.log
 	echo "installing audacity"
	sudo flatpak install -y --noninteractive org.audacityteam.Audacity >> setup.log
 	
fi
echo "Do you want any programming utilities?(Y/N)"
read prog
if [ "${prog,,}" == "y" ]; then
	echo "installing virtualbox, python, eclipse, vscodium, godot, gcc, git, codeblocks, rust and haskell"
	sudo apt --yes install virtualbox >> setup.log
	sudo apt --yes install python3.11* >> setup.log
	sudo apt install python-is-python3 >> setup.log
	sudo flatpak install -y --noninteractive org.eclipse.Java >> setup.log
	sudo flatpak install -y --noninteractive com.vscodium.codium >> setup.log
	sudo apt -y install godot3 >> setup.log
	sudo apt -y install gcc >> setup.log
	sudo apt -y install git >> setup.log
	sudo apt -y install codeblocks >> setup.log
	sudo curl https://sh.rustup.rs | sh
	sudo curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi
echo "are you me?(Y/N)"
read nerd
if [ "${nerd,,}" == "y" ]; then
	echo "installing polyglot, some junk and mainline"
	sudo wget https://github.com/DraqueT/PolyGlot/releases/download/3.5.1/PolyGlot-Ins-Lin.deb >> setup.log
	sudo dpkg -i PolyGlot-Ins-Lin.deb >> setup.log
	sudo dpkg -i protonvpn-stable-release_1.0.3-2_all.deb >> setup.log
	sudo apt update >> setup.log
	sudo apt -y install protonvpn >> setup.log
	sudo flatpak install -y --noninteractive uk.co.powdertoy.tpt >> setup.log
	sudo apt install -y polyglot >> setup.log
	sudo apt install -y lmms >> setup.log
	sudo apt install -y freeciv* >> setup.log
	sudo apt install -y notepadqq >> setup.log
	sudo apt install -y caneda >> setup.log
	sudo apt install -y gnusim8085 >> setup.log
	sudo apt install -y micropolis >> setup.log
	sudo apt install -y fontforge >> setup.log
	sudo apt install -y freecad >> setup.log
	sudo apt install -y kicad >> setup.log
 	sudo wget https://github.com/lights0123/n-link/releases/download/v0.1.6/n-link_0.1.6_amd64.deb >> setup.log
  	sudo dpkg -i n-link_0.1.6_amd64.deb >> setup.log
	curl -L https://raw.githubusercontent.com/rust-lang/rustlings/main/install.sh | bash
	sudo ln -s /lib/x86_64-linux-gnu/libssl.so.3 /lib/x86_64-linux-gnu/libssl.so.1.1 >> setup.log
 	sudo ln -s /lib/x86_64-linux-gnu/libcrypto.so.3 /lib/x86_64-linux-gnu/libcrypto.so.1.1 >> setup.log
  	sudo add-apt-repository ppa:cappelikan/ppa >> setup.log
	sudo apt update >> setup.log
	sudo apt -y install mainline >> setup.log 
fi 
sudo mkdir ~/bin/
sudo cp ./setup.sh ~/bin
sudo chmod +x ~/bin/setup.sh
echo "export PATH=$PATH:~/bin" >> ~/.bashrc
sudo apt -y autoremove
