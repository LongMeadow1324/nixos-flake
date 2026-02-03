{config, pkgs, ...}:
{
environment.systemPackages = with pkgs; [nautilus totem ffmpegthumbnailer];
services.gvfs.enable = true; 
}
