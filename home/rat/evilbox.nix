{config, ...}:
{

imports = [

#Desktop environment
./features/desktop/hyprland
./features/desktop/hyprpanel
./features/desktop/fuzzel

#CLI Tools 
./features/cli

#Desktop packages and applications
./features/desktop/common
./global

#WiVRN VR Path Fix
../../pkgs/VirtualReality/openvrpath.nix
];

  home.stateVersion = "25.11";
}
