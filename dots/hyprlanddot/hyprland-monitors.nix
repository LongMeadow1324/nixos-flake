{ config, pkgs, ...}: 
{ 
wayland.windowManager.hyprland = {
settings = {

monitor = [ 
"HDMI-A-1,1920x1080@119.88,3440x600,1, transform, 1"
"HDMI-A-1,transform,1"
"DP-1,3440x1440@99.98,0x1080,1.0"
"DP-2,1920x1080@60.0,978x0,1.0"
];

workspace = [ 
"1,monitor:DP-1,default:true"
"2,monitor:HDMI-A-1,default:true"
"3,monitor:DP-2,default:true"
];

};
};
} 
