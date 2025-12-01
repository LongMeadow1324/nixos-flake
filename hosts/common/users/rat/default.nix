{pkgs, config, lib, ...}:
let 
ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in 
{

users.mutableUsers = false; 

users.users.rat = {
isNormalUser = true; 
extraGroups = ifTheyExist [
"networkmanager" 
"wheel" 
"libvirtd" 
];
packages = with pkgs; []; 
};
}
