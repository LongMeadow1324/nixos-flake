{config, pkgs, lib, ...}:
{
environment.systemPackages = with pkgs; [egl-wayland kitty lxqt.lxqt-policykit]
programs.hyprland.enable = true; 
programs.hyprland.withUWSM = true; 
}
