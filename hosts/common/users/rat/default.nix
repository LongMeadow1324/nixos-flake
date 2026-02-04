{pkgs, config, lib, ...}:
let 
ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in 
{

users.users.rat = {
isNormalUser = true; 
extraGroups = ifTheyExist [
"networkmanager" 
"wheel" 
"libvirtd" 
];
initialHashedPassword = "$y$j9T$wHka4kn2P.J3H6gsMNDnx.$2VVfP99pUvU8yQaXvUtzmJGODtwWLjf5zdhQN7nJki4";
packages = with pkgs; []; 
};

  home-manager.users.rat =
  {
     imports = [../../../../home/rat/${config.networking.hostName}.nix];
     
     home.username = "rat"; 
     home.homeDirectory = "/home/rat";
  };

nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
           "steam" "steam-unwrapped" "nvidia-x11" "veracrypt" "nvidia-settings"
 
           ];

}
