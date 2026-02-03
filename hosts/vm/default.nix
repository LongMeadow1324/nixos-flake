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
../common/optional/systemd-boot.nix
../common/optional/zram.nix

./disk-config.nix

#Specific packages

];

#Set the hostname :3
networking = {
hostName = "vm";
};

    boot.initrd.luks.devices = {
    cryptroot = {
      device = "/dev/disk/by-partlabel/luks";
      allowDiscards = true;
    };
  };


system.stateVersion = "25.11"; 

}
