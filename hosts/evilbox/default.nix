{pkgs, lib, ...}:
{
imports = [
./hardware-configuration.nix
./evilbox.nix
];

networking = {
hostName = "evilbox";
};

}
