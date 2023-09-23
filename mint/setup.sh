echo "Hi there. This script is gonna need some root privileges to run."
sleep 3
sudo chmod +x sumint.sh
./sumint.sh | tee setup.log
