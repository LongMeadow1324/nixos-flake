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
packages = with pkgs; []; 
};

  home-manager.users.rat =
  {
     imports = [../../../../home/rat/${config.networking.hostName}.nix];
     
     home.username = "rat"; 
     home.homeDirectory = "/home/rat";
  };

}
