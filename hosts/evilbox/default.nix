{pkgs, lib, ...}:
{
imports = [
#For the evilbox
./hardware-configuration.nix

#Common things
../common/global

#User account
../common/users/rat

#Optional things
../common/optional/hyprland.nix
../common/optional/nvidia-drivers.nix
../common/optional/qemu.nix
../common/optional/systemd-boot.nix
../common/optional/flatpak.nix
../common/optional/sober.nix
../common/optional/solaar.nix
../common/optional/bluetooth.nix
../common/optional/mullvad.nix
../common/optional/steam.nix
../common/optional/SteamInputWayland.nix



#Specific packages
../../pkgs/VirtualReality

];

#Set the hostname :3
networking = {
hostName = "evilbox";
};

system.stateVersion = "25.11"; 

nix.allowedUsers = [ "root" "rat"];

}
