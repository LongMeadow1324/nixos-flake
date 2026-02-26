{pkgs, config, lib, ...}:
let 
ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in 
{

users.users.otter= {
isNormalUser = true; 
extraGroups = ifTheyExist [
"networkmanager" 
"wheel" 
"libvirtd" 
];
initialHashedPassword = "$y$j9T$LS/x06N6d9vsQ6Mr62nHm0$WhO1ZnXhhX5xhzQMM6B2BX5Sjr7u.XwP5Gm1g4ukF38";
packages = with pkgs; []; 
};

  home-manager.users.otter =
  {
     imports = [../../../../home/otter/${config.networking.hostName}.nix];
     
     home.username = "otter"; 
     home.homeDirectory = "/home/otter";
  };

nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
           "steam" "steam-unwrapped" "nvidia-x11" "veracrypt" "nvidia-settings"
 
           ];

}
