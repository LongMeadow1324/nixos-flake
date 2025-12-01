{pkgs, lib, ...}:
{
imports = [
#For the vm
./hardware-configuration.nix

#Common things
../common/global

#User account
../common/users/rat

#Optional things
../common/optional/hyprland.nix
../common/optional/grub.nix

#Specific packages

];

#Set the hostname :3
networking = {
hostName = "vm";
};

system.stateVersion = "25.11"; 

}
