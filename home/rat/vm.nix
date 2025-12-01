{config, ...}:
{

imports = [

#Desktop
./features/desktop/hyprland
./features/desktop/hyprpanel
./features/desktop/fuzzel

#CLI Tools 
./features/cli

#TODO: Delete Pkgs folder, merge with features/global folder. Refrence misterio77 on github
./pkgs
];

}
