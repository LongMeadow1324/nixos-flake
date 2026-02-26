{ config, pkgs, ...}: 
{
programs.waybar = {
  enable = true;

  settings = {
    mainBar = {
      position = "top";
      height = 5;

      modules-left = [
        "hyprland/workspaces"
        "hyprland/mode"
        "custom/media"
        "mpris"
      ];

      modules-center = [
        "hyprland/window"
      ];

      modules-right = [
        "tray"
        "wireplumber"
        "network"
        "backlight"
        "cpu"
        "memory"
        "battery"
        "battery#bat2"
        "clock"
        "custom/powermenu"
        "custom/notification"
      ];

      "hyprland/mode" = {
        format = "<span style=\"italic\">{}</span>";
      };

      mpd = {
        format = "{stateIcon} {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S}) ⸨{songPosition}|{queueLength}⸩ ";
        format-disconnected = "Disconnected ";
        format-stopped = "{consumeIcon}{randomIcon}{repeatIcon}{singleIcon}Stopped ";
        unknown-tag = "N/A";
        interval = 2;

        consume-icons.on = " ";

        random-icons = {
          off = "<span color=\"#f53c3c\"></span> ";
          on = " ";
        };

        repeat-icons.on = " ";
        single-icons.on = "1 ";

        state-icons = {
          paused = "";
          playing = "";
        };

        tooltip-format = "MPD (connected)";
        tooltip-format-disconnected = "MPD (disconnected)";
      };

      idle_inhibitor = {
        format = "{icon}";
        timeout = 30.5;

        format-icons = {
          activated = "";
          deactivated = "";
        };
      };

      tray = {
        icon-size = 21;
        spacing = 10;
      };

      clock = {
        format = "{:%I:%M }";
        format-alt = "{:%Y-%m-%d}";
      };

      cpu = {
        format = "{usage}% ";
        tooltip = false;
      };

      memory.format = "{}% ";

      temperature = {
        critical-threshold = 80;
        format = "{temperatureC}°C {icon}";
        format-icons = [ "" "" "" ];
      };

      backlight = {
        format = "{percent}% ";
        format-icons = [ "" "" ];
      };

      battery = {
        states = {
          good = 95;
          warning = 30;
          critical = 15;
        };

        format = "{capacity}% ";
        format-charging = "{capacity}%";
        format-plugged = "{capacity}%";
        format-alt = "{time} ";
      };

      "battery#bat2" = {
        bat = "BAT2";
      };

      network = {
        format-wifi = "{essid} ({signalStrength}%)";
        format-ethernet = "{ifname}: {ipaddr}/{cidr}";
        format-linked = "{ifname} (No IP) ";
        format-disconnected = "Disconnected ";
        format-alt = "{ifname}: {ipaddr}/{cidr}";
        on-click = "blueberry";
      };

      pipewire = {
        format = "{volume}%  {format_source}";
        format-bluetooth = "{volume}%  {format_source}";
        format-bluetooth-muted = " {format_source}";
        format-muted = " {format_source}";
        format-source = "{volume}% ";
        format-source-muted = "";
        on-click = "pavucontrol";
        on-click-right = "helvum";
      };

      wireplumber = {
        format = "{volume}%";
        format-muted = "";
        on-click = "pavucontrol";
        on-click-right = "helvum";
      };

      "custom/powermenu" = {
        format = "⏻";
        tooltip = "Power Menu";
        on-click =
          "eww open --toggle eww_backdrop --screen $(hyprctl activewindow -j | jq '.monitor') && eww open --toggle power_menu --screen $(hyprctl activewindow -j | jq '.monitor')";
        on-click-right = "eww close power_menu; eww close eww_backdrop";
      };

      "wlr/taskbar" = {
        format = "{icon}";
        icon-theme = "Papirus-Dark";
        spacing = 0;
        tooltip-format = "{title}";
        on-click = "activate";
        on-click-middle = "close";
        on-click-right = "fullscreen";
      };

      mpris = {
        format = "{player_icon} {dynamic}";
        format-paused = "{status_icon} <i>{dynamic}</i>";

        player-icons = {
          default = "▶";
          mpv = "🎵";
        };

        status-icons.paused = "⏸";
      };

      "custom/media" = {
        "custom/waybar-media" = {
          return-type = "json";
          exec = "waybar-media.py status";
          on-click = "waybar-media.py playpause";
          on-scroll-up = "waybar-media.py previous";
          on-scroll-down = "waybar-media.py next";
          escape = true;
        };
      };

      "custom/notification" = {
        tooltip = false;
        format = "{icon}";
        return-type = "json";
        exec-if = "which swaync-client";
        exec = "swaync-client -swb";
        on-click = "swaync-client -t -sw";
        on-click-right = "swaync-client -d -sw";
        escape = true;

        format-icons = {
          notification = "<span foreground='red'><sup></sup></span>";
          none = "";
          "dnd-notification" = "<span foreground='red'><sup></sup></span>";
          "dnd-none" = "";
          "inhibited-notification" = "<span foreground='red'><sup></sup></span>";
          "inhibited-none" = "";
          "dnd-inhibited-notification" = "<span foreground='red'><sup></sup></span>";
          "dnd-inhibited-none" = "";
        };
      };

      "custom/mediap" = {
        format = "{icon} {}";
        return-type = "json";
        max-length = 40;
        escape = true;

        format-icons = {
          spotify = "";
          default = "🎜";
        };

        exec = "python $HOME/.config/waybar/mediaplayer.py 2> /dev/null";
      };
    };
  };
};

} 
