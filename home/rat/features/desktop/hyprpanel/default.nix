{ inputs, pkgs,  ... }:
{
  programs.hyprpanel = {
    enable = true;
    # Configure and theme almost all options from the GUI.
    # See 'https://hyprpanel.com/configuration/settings.html'.
    settings = {

      # Configure bar layouts for monitors.
      # See 'https://hyprpanel.com/configuration/panel.html'.
      # Default: null
      bar.layouts = {
        "*" = {
          left = [
            "dashboard"
            "workspaces"
          ];
          middle = [ "media" ];
          right = [
            "systray"
            "volume"
	    "clock"
            "notifications"
          ];
        };
      };

      bar.layouts = {
        "0" = {
          left = [
            "dashboard"
            "workspaces"
          ];
          middle = [ ];
          right = [
            "volume"
            "clock"
            "notifications"
          ];
        };
      };


		

      bar.launcher.autoDetectIcon = true;

      bar.systray.ignore = ["Xwayland Video Bridge_pipewireToXProxy"];

      menus.clock = {
        time = {
          military = true;
        };
        weather.unit = "metric";
      };

      menus.dashboard.directories.enabled = false;
      menus.dashboard.stats.enable_gpu = false;
      menus.dashboard.shortcuts.left.shortcut1.icon = "";
      menus.dashboard.shortcuts.left.shortcut1.command = "systemctl --user restart wivrn && sleep 2 && adb reverse tcp:9757 tcp:9757 && adb shell am start -a android.intent.action.VIEW -d \"wivrn+tcp://localhost\" org.meumeu.wivrn.github";
      menus.dashboard.shortcuts.left.shortcut1.tooltip = "Start WiVRN Wired";
        menus.dashboard.shortcuts.left.shortcut2.command = "spotify";
  menus.dashboard.shortcuts.left.shortcut3.command = "vesktop";
  menus.dashboard.shortcuts.left.shortcut4.command = "fuzzel";

      theme.bar.transparent = false;
  theme.matugen = true;
  wallpaper.enable = false; 
  wallpaper.image = "/home/rat/Downloads/wallpaper.jpg";
  theme.matugen_settings.mode = "dark";
  theme.matugen_settings.scheme_type = "expressive";
  theme.matugen_settings.variation = "standard_3";
  menus.clock.weather.location = "84096";
  menus.clock.weather.key = "2087927a3adc49ae8d170556251911";
  theme.bar.buttons.opacity = 100;
  theme.bar.menus.opacity = 100;



scalingPriority =  "both";
  theme.bar.scaling =  80;
  theme.notification.scaling =  80;
  theme.osd.scaling =  80;
  theme.bar.floating =  true;
  theme.bar.opacity =  0;
  theme.bar.buttons.background_opacity =  40;
  theme.bar.buttons.monochrome =  false;
  theme.bar.border.location =  "none";
  theme.bar.enableShadow =  false;
  theme.bar.buttons.radius =  "1.3em";
  theme.bar.buttons.padding_y =  "0.2rem";
  theme.bar.buttons.padding_x =  "0.7rem";
  theme.bar.buttons.spacing =  "0.25em";
  theme.bar.buttons.y_margins =  "0.1em";
  theme.bar.buttons.innerRadiusMultiplier =  "0.7";
  theme.bar.dropdownGap =  "1.8em";
  theme.bar.margin_top =  "0.5em";
  theme.bar.margin_sides =  "0em";
  theme.bar.buttons.dashboard.enableBorder =  false;
  bar.workspaces.monitorSpecific =  false;
  bar.workspaces.show_icons =  false;
  bar.workspaces.show_numbered =  false;
  bar.workspaces.workspaceMask =  false;
  bar.workspaces.showWsIcons =  true;
  bar.workspaces.showApplicationIcons =  true;
  bar.workspaces.applicationIconOncePerWorkspace =  true;
  bar.workspaces.showAllActive =  false;
  bar.workspaces.numbered_active_indicator =  "highlight";
  theme.bar.buttons.workspaces.smartHighlight =  true;
  theme.bar.buttons.workspaces.numbered_active_highlight_border =  "1em";
  theme.bar.buttons.workspaces.numbered_active_highlight_padding =  "0.6em";
  theme.bar.buttons.workspaces.numbered_inactive_padding =  "0.2em";
  bar.workspaces.spacing =  1;
  bar.workspaces.workspaces =  6;
  bar.windowtitle.custom_title =  true;
  bar.windowtitle.class_name =  true;
  bar.windowtitle.label =  true;
  bar.windowtitle.icon =  true;
  bar.clock.format =  "%a %m/%d  %R:%S";
  bar.clock.showIcon =  false;
  bar.clock.showTime =  true;
  theme.bar.buttons.clock.spacing =  "0em";
  bar.media.show_active_only =  true;
  bar.notifications.show_total =  true;
  bar.notifications.hideCountWhenZero =  true;
  notifications.monitor =  1;
  notifications.position =  "top right";
  theme.osd.orientation =  "horizontal";
  theme.osd.location =  "bottom";
  theme.osd.radius =  "2em";
  theme.osd.muted_zero =  true;
  menus.clock.time.hideSeconds =  false;
  theme.font.size =  "1.2rem";
  theme.bar.outer_spacing =  "0.6em";

  wallpaper.pywal = true;
      theme.font = {
        name = "JetBrains Mono";
      };
    };
  };

home.packages = with pkgs; [
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
];

}
