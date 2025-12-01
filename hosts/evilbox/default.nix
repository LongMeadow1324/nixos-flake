{pkgs, lib, ...}:
{
imports = [
#For the evilbox
./hardware-configuration.nix
./evilbox.nix

#Common things
../common/global

#User account
../common/users/rat

#Optional things
../common/optional/hyprland.nix
../common/optional/nvidia-drivers.nix
../common/optional/qemu.nix

#Specific packages
../../pkgs/VirtualReality
];

#Set the hostname :3
networking = {
hostName = "evilbox";
};

system.stateVersion = "25.11"; 

}
