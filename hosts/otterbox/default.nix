{pkgs, lib, ...}:
{
imports = [
#For the otterbox
./hardware-configuration.nix

#Common things
../common/global

#User account
../common/users/otter

#Optional things
../common/optional/kde.nix
../common/optional/nvidia-drivers.nix
../common/optional/systemd-boot.nix
../common/optional/flatpak.nix
../common/optional/sober.nix
../common/optional/bluetooth.nix
../common/optional/mullvad.nix
../common/optional/steam.nix
../common/optional/SteamInputWayland.nix
#Flatpaks
../../home/otter/features/desktop/common/flatpak

#Specific packages
../../pkgs/VirtualReality

];

#Set the hostname :3
networking = {
hostName = "otterbox";
};

system.stateVersion = "25.11"; 

nix.allowedUsers = [ "root" "otter"];

}
