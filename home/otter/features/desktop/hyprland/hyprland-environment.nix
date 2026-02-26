{ config, pkgs, ...}: 
{
wayland.windowManager.hyprland = {
settings = { 
env = [

"XCURSOR_SIZE,24"
"HYPRCURSOR_SIZE,24"
"LIBVA_DRIVER_NAME,nvidia"
"__GLX_VENDOR_LIBRARY_NAME,nvidia"

];

cursor = { 
no_hardware_cursors = "true"; 
}; 

};
}; 
}
