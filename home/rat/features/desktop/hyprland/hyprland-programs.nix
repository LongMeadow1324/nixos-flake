{ conifg, pkgs, ...}: 
{ 
wayland.windowManager.hyprland = {
settings = {
 
"$terminal" = "kitty";
"$fileManager" = "nautilus";

exec-once = [
"lxqt-policykit-agent"
"opensnitch-ui"
];
}; 
};
} 
