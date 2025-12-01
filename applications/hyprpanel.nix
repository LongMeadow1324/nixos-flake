{ inputs, ... }:
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

      bar.launcher.autoDetectIcon = true;
      bar.workspaces.show_icons = true;

      bar.systray.ignore = ["Xwayland Video Bridge_pipewireToXProxy"];

      menus.clock = {
        time = {
          military = true;
          hideSeconds = true;
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
      theme.bar.opacity = 50; 
      theme.bar.buttons.background_opacity = 0; 
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
  wallpaper.pywal = true;
      theme.font = {
        name = "JetBrains Mono";
        size = "16px";
      };
    };
  };

}
