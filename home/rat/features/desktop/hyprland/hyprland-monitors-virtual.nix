{ config, pkgs, ...}: 
{ 
wayland.windowManager.hyprland = {
settings = {

monitor = [ 
"Virtual-1,1920x1080@60.0,0x0,1.0"
];


};
};
} 
