{pkgs, lib, ...}:
{
imports = [
#For the evilbox
./hardware-configuration.nix
./evilbox.nix

#Common things
../common/global

#Specific packages
../../pkgs/VirtualReality
];

#Set the hostname :3
networking = {
hostName = "evilbox";
};

}
