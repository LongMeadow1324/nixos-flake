{config, pkgs, ...}:
{
environment.systemPackages = with pkgs; [nautilus];
services.gvfs.enable = true; 
}
