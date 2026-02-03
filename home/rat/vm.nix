{config, ...}:
{

imports = [

#Desktop
./features/desktop/hyprland
./features/desktop/hyprpanel
./features/desktop/fuzzel

#So that hyprland isnt at an unusable scale
./features/desktop/hyprland/hyprland-monitors-virtual.nix

./global
./features/desktop/common/librewolf.nix
./features/desktop/common/konsole.nix

#CLI Tools 
./features/cli

];

  home.stateVersion = "25.11";
}
