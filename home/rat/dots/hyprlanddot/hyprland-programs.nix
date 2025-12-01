{ conifg, pkgs, ...}: 
{ 
wayland.windowManager.hyprland = {
settings = {
 
"$terminal" = "kitty";
"$fileManager" = "nautilus";

exec-once = [
"sunshine"
"wayvnc 0.0.0.0"
"clipse -listen"
"lxqt-policykit-agent"
];
}; 
};
} 
