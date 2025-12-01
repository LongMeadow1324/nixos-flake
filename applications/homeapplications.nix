{ config, pkgs, pkgs-unstable, ...}: 
{
home.packages =(with pkgs; [
  # Hyprland ecosystem
  hyprland
  hyprpaper
  hypridle
  hyprlock
  hyprpicker

  # Apps / utilities
  kitty
  fuzzel
  vesktop
  cider
  firefox
  gedit

  # GNOME / QT theming
  anki
  glib           # for gsettings
  qt6Packages.qt6ct
  adw-gtk3


  # Audio / Media
  mpd
  mpc
  playerctl
  pavucontrol
  helvum
  mpv
  spotify          # optional
  qpwgraph  
  schismtracker
  nicotine-plus  

  # Waybar + scripts
  waybar
  python3
  nodejs           # for npx

  # Clipboard
  wl-clipboard     # wl-copy | wl-paste
  clipse

  # Screenshot tools
  grim
  slurp

  # Networking / remote
  wayvnc
  sunshine
  uxplay
  blueberry

  # Misc
  jq
  eww
  brightnessctl

  # Fonts / icons
  nerd-fonts.droid-sans-mono
  font-awesome

  #Other
  mullvad-browser
  telegram-desktop
  librewolf
  proton-pass
  protonvpn-gui
  protonmail-desktop
wireplumber
libgtop
bluez
networkmanager
dart-sass
wl-clipboard
upower
gtksourceview3
solaar

## Used for Tracking GPU Usage in your Dashboard (NVidia only)

## To control screen/keyboard brightness
brightnessctl

## Only if a pywal hook from wallpaper changes applied through settings is desired
pywal

## To check for pacman updates in the default script used in the updates module

## To switch between power profiles in the battery module

## To take snapshots with the default snapshot shortcut in the dashboard
grimblast

## To record screen through the dashboard record shortcut
wf-recorder

## To enable the eyedropper color picker with the default snapshot shortcut in the dashboard
hyprpicker

## To enable hyprland's very own blue light filter
hyprsunset

## To click resource/stat bars in the dashboard and open btop
btop

## To enable matugen based color theming
matugen

## To enable matugen based color theming and setting wallpapers
swww

nerd-fonts.jetbrains-mono
])

++

#unstable, like me

(with pkgs-unstable; [
audacity
feishin
]);
}



#services.swaync.enable = true; 
 

