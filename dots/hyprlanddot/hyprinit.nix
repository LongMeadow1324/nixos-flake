{ config, pkgs, ... }: 
{
 wayland.windowManager.hyprland = { 
  
  enable = true; 
  package = null; 
  portalPackage = null; 
  systemd.variables = ["--all"];
};

  xdg.configFile."uwsm/env".source = "${config.home.sessionVariablesPackage}/etc/profile.d/hm-session-vars.sh";



imports = [
./hyprland-monitors.nix
./hyprland-environment.nix
./hyprland-bind.nix
./hyprland-programs.nix
./hyprland-look.nix
];

} 
