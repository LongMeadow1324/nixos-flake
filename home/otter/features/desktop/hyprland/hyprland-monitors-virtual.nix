{ config, pkgs, ...}: 
{ 
wayland.windowManager.hyprland = {
settings = {

monitor = [ 
"Virtual-1,1280x720@60.0,0x0,1.0"
];


};
};
} 
