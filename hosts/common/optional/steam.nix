{config, pkgs, ...}:

let
gamescope-git = pkgs.callPackage ./gamescope.nix {}; 
in 
{
  programs = {
    gamescope = {
      enable = true;
      #package = gamescope-git;
      capSysNice = false;
     # args = [
      #  "--output-width 3440"
       # "--nested-width 3440"
        #"--output-height 1440"
        #"--nested-height 1440"
       # "--expose-wayland"
        #"--force-grab-cursor"
       # "--adaptive-sync"
      #  "--fullscreen"
     # ];
    };
};
programs.gamemode.enable = true; 
programs.steam.enable = true; 

}
