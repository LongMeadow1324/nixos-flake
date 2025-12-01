{ config, pkgs, ...}: 
{
  wayland.windowManager.hyprland = { 
  
   enable = true; 

   settings = { 
   #Keybinds 
 
   "$mainMod" = "SUPER";
   
bind = [
"$mainMod, T, exec, $terminal"
"$mainMod, SUPER_L, exec, pkill fuzzel || fuzzel"
"$mainMod ALT, W, exec, mullvad-browser"
"$mainMod ALT, A, exec, Telegram"
"$mainMod ALT, D, exec, vesktop"
"$mainMod ALT, Q, exec, feishin"
"$mainMod ALT, S, exec, launch-steam"
"$mainMod SHIFT, L, exec, hyprctl dispatch exit"
"$mainMod, Q, killactive"
"$mainMod, M, exit,"
"$mainMod, E, exec, $fileManager"
"$mainMod CTRL, F, togglefloating"
"$mainMod ALT, F, fullscreenstate, 0 2"
"$mainMod, F, fullscreen"
"$mainMod, R, exec, $menu"
"$mainMod, P, pseudo, # dwindle"
"$mainMod, J, togglesplit, # dwindle"
"$mainMod, L, exec, hyprlock"
"$mainMod ALT, P, exec, hyprpaper"
"$mainMod ALT, I, exec, pkill hypridle"
"$mainMod CTRL, I, exec, hypridle"
"$mainMod, C, exec, hyprpicker -a"
"$mainMod ALT, E, exec, mullvad-browser --new-window e621.net"
"$mainMod, Z, exec, eww open --toggle power_menu --screen 1"


"$mainMod, escape, exec, wayvncctl output-cycle"


"$mainMod, left, movefocus, l"
"$mainMod, right, movefocus, r"
"$mainMod, up, movefocus, u"
"$mainMod, down, movefocus, d"

"$mainMod, 1, workspace, 1"
"$mainMod, 2, workspace, 2"
"$mainMod, 3, workspace, 3"
"$mainMod, 4, workspace, 4"
"$mainMod, 5, workspace, 5"
"$mainMod, 6, workspace, 6"
"$mainMod, 7, workspace, 7"
"$mainMod, 8, workspace, 8"
"$mainMod, 9, workspace, 9"
"$mainMod, 0, workspace, 10"


"$mainMod SHIFT, 1, movetoworkspace, 1s"
"$mainMod SHIFT, 2, movetoworkspace, 2"
"$mainMod SHIFT, 3, movetoworkspace, 3"
"$mainMod SHIFT, 4, movetoworkspace, 4"
"$mainMod SHIFT, 5, movetoworkspace, 5"
"$mainMod SHIFT, 6, movetoworkspace, 6"
"$mainMod SHIFT, 7, movetoworkspace, 7"
"$mainMod SHIFT, 8, movetoworkspace, 8"
"$mainMod SHIFT, 9, movetoworkspace, 9"
"$mainMod SHIFT, 0, movetoworkspace, 10"
"$mainMod SHIFT, left, movewindow, l"
"$mainMod SHIFT, right, movewindow, r"
"$mainMod SHIFT, up, movewindow, u"
"$mainMod SHIFT, down, movewindow, d"


"$mainMod, mouse_down, workspace, e+1"
"$mainMod, mouse_up, workspace, e-1"

''$mainMod SHIFT, S, exec, grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | dunstify "Screenshot of the region taken" -t 1000''
''SHIFT, Print, exec, grim - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | dunstify "Screenshot of whole screen taken" -t 1000''
];

bindm = [

"$mainMod, mouse:272, movewindow"
", mouse:277, movewindow"
", mouse:265, movewindow"
"ctrl, mouse:265, resizewindow"
"$mainMod, mouse:273, resizewindow"
"$mainMod, mouse:277, resizewindow"
];

bindel = [
",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
",XF86MonBrightnessDown, exec, brightnessctl s 10%-"

];

bindl = [
", XF86AudioNext, exec, playerctl next"
", XF86AudioPause, exec, playerctl play-pause"
", XF86AudioPlay, exec, playerctl play-pause"
", XF86AudioPrev, exec, playerctl previous"

];



  };
}; 
}

