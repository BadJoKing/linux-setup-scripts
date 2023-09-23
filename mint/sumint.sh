#!/usr/bin/bash
echo "all log files are saved to ./setup.log"
sleep 5
echo "I'm gonna need some root access to run properly"
sudo apt update
sudo apt --yes full-upgrade 
sudo apt --yes install *linux-firmware* 
sudo apt --yes install lutris 
sudo apt --yes install gparted 
sudo apt --yes install obs-studio 
sudo apt -y install steam 
sudo flatpak install -y --noninteractive com.discordapp.Discord 
sudo flatpak install -y --noninteractive org.libreoffice.LibreOffice 
sudo flatpak install -y --noninteractive org.videolan.VLC 
sudo apt -y install openjdk-19-jdk 
sudo flatpak install -y --noninteractive org.phoenicis.playonlinux 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key 
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources 
sudo apt update 
sudo apt -y install --install-recommends winehq-devel 
sudo apt -y install winetricks 
sudo apt -y install protontricks 
sudo flatpak install -y --noninteractive net.davidotek.pupgui2 
echo "Are you using a laptop?(Y/N)"
read tlp
if [[ "${tlp,,}" == "y" ]]; then
	echo "installing and configuring tlp"
	sudo add-apt-repository -y ppa:linrunner/tlp 
	sudo apt update
	sudo apt -y install tlp
	sudo tlp start
 	sudo systemctl enable tlp
  	sudo flatpak install -y --noninteractive tlpui
fi
echo "Do you want to install any Image/Audio editing utilities?(Y/N)"
read img
if [ "${img,,}" == "y" ]; then
	echo echo "installing gimp, blender, audacity and kdenlive"
	sudo apt install --yes gimp
	sudo flatpak install -y --noninteractive org.blender.Blender 
	sudo flatpak install -y --noninteractive org.audacityteam.Audacity 
 	sudo flatpak install -y --noninteractive org.kde.kdenlive 
fi
echo "Do you want any programming utilities?(Y/N)"
read prog
if [ "${prog,,}" == "y" ]; then
	echo "installing virtualbox, python, eclipse, vscodium, godot, gcc, git, codeblocks, rust and haskell"
	sudo apt --yes install virtualbox 
	sudo apt --yes install python3.11* 
	sudo apt install python-is-python3 
	sudo flatpak install -y --noninteractive org.eclipse.Java 
	sudo flatpak install -y --noninteractive com.vscodium.codium 
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
	echo "installing polyglot, some junk and mainline"
	sudo wget https://github.com/DraqueT/PolyGlot/releases/download/3.5.1/PolyGlot-Ins-Lin.deb 
	sudo dpkg -i PolyGlot-Ins-Lin.deb 
	sudo dpkg -i protonvpn-stable-release_1.0.3-2_all.deb 
	sudo apt update 
	sudo apt -y install protonvpn 
	sudo flatpak install -y --noninteractive uk.co.powdertoy.tpt 
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
 	sudo wget https://github.com/lights0123/n-link/releases/download/v0.1.6/n-link_0.1.6_amd64.deb 
  	sudo dpkg -i n-link_0.1.6_amd64.deb 
	curl -L https://raw.githubusercontent.com/rust-lang/rustlings/main/install.sh | bash
	sudo ln -s /lib/x86_64-linux-gnu/libssl.so.3 /lib/x86_64-linux-gnu/libssl.so.1.1 
 	sudo ln -s /lib/x86_64-linux-gnu/libcrypto.so.3 /lib/x86_64-linux-gnu/libcrypto.so.1.1 
  	sudo add-apt-repository ppa:cappelikan/ppa 
	sudo apt update 
	sudo apt -y install mainline  
fi 
sudo mkdir ~/bin/
sudo cp ./setup.sh ~/bin
sudo chmod +x ~/bin/setup.sh
echo "export PATH=$PATH:~/bin" >> ~/.bashrc
sudo apt -y autoremove
