yay -Syy --noconfirm paru
curl https://raw.githubusercontent.com/BadJoKing/linux-setup-scripts/main/bashrc > $HOME/.bashrc
# Adds automatic snapshots
paru -Syy --needed --noconfirm snapper btrfs-assistant grub-btrfs snap-pac snap-pac-grub
# Gaming stuff
paru -Syy --noconfirm --needed steam wine wine-gecko wine-mono protontricks winetricks amdvlk vulkan-radeon amdgpu-vulkan-switcher-git  
# Asus stuff
paru -Syy --noconfirm --needed asusctl supergfxctl rog-control-center 
# QOL stuff
paru -Syy --noconfirm --needed blueman qemu-full virt-manager kdeconnect mint-y-icons mercury-browser-bin discord discord-update-skip-git noise-suppression-for-voice 
# Other stuff
paru -Syy --noconfirm --needed draquet-polyglot-bin vlc tor torsocks tor-browser-bin
# this disables the usb write cache
echo "SUBSYSTEMS==\"usb\", SUBSYSTEM==\"block\", ENV{ID_FS_USAGE}==\"filesystem\", ENV{UDISKS_MOUNT_OPTIONS_DEFAULTS}+=\"sync\", ENV{UDISKS_MOUNT_OPTIONS_ALLOW}+=\"sync\"" | sudo tee /etc/udev/rules.d/99-udisks2-usb_mount.rules
sudo udevadm control --reload-rules

echo "--- ATTENTION ---"
echo "Please go into Btrfs-Assistant and set up snapshots for your drive(s)"
echo "-----------------"
