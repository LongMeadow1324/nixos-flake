{ config, pkgs, ...}: 
{
programs.fuzzel = {
enable = true; 
settings = { 
main = { 
dpi-aware = "no";
icon-theme = "Papirus-Dark";
width = "20";
#font = "Hack:weight=bold:size=15";
line-height = "25";
fields = "name,generic,comment,categories,filename,keywords";
terminal = "kitty -e";
prompt= ''"❯   "'';
show-actions = "yes";
exit-on-keyboard-focus-loss = "yes";
}; 
#colors.background = "282a36F0";
#colors.selections = "3d4474fay";
#colors.border = "fffffffa"; 
#colors.text = "159ce6fa"; 

border.radius = "1"; 

dmenu.exit-immediately-if-empty= "yes";
}; 
};  
}
