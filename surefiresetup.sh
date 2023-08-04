sudo -s
sudo mkdir /sfsetup
sudo cd /sfsetup
sudo apt install git
gh repo clone /BadJoKing/linux-setup-scripts
cd linux-setup-scripts
while IFS= read -r line; do sudo aptitude -y install "${line}"; done < aptlist.txt
