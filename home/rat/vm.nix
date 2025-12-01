{config, ...}:
{

imports = [

#Desktop
./features/desktop/hyprland
./features/desktop/hyprpanel
./features/desktop/fuzzel

#So that hyprland isnt at an unusable scale
./features/desktop/hyprland/hyprland-monitors-virtual.nix

#CLI Tools 
./features/cli

#TODO: Delete Pkgs folder, merge with features/global folder. Refrence misterio77 on github
./pkgs
];

  home.stateVersion = "25.11";
}
