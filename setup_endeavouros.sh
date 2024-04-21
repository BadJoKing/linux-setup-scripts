yay -Syy paru
curl https://raw.githubusercontent.com/BadJoKing/linux-setup-scripts/main/bashrc > $HOME/.bashrc
paru -Syy --noconfirm steam wine wine-gecko wine-mono protontricks winetricks asusctl supergfxctl rog-control-center blueman qemu-full virt-manager kdeconnect mint-y-icons amdvlk vulkan-radeon amdgpu-vulkan-switcher-git mercury-browser-bin discord discord-update-skip-git
echo "SUBSYSTEMS==\"usb\", SUBSYSTEM==\"block\", ENV{ID_FS_USAGE}==\"filesystem\", ENV{UDISKS_MOUNT_OPTIONS_DEFAULTS}+=\"sync\", ENV{UDISKS_MOUNT_OPTIONS_ALLOW}+=\"sync\"" | sudo tee /etc/udev/rules.d/99-udisks2-usb_mount.rules
sudo udevadm control --reload-rules
