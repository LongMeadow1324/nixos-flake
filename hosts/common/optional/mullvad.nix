{config, pkgs, ...}:
{

environment.systemPackages = with pkgs; [mullvad-vpn]; 

services.resolved.enable = true; 

services.mullvad-vpn.enable = true; 
}

