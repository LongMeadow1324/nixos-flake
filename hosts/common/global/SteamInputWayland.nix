{ config, pkgs, ... }:

{


  systemd.user.services.steam = {
    description = "Steam with custom LD_PRELOAD";
    environment = {
      LD_PRELOAD = "${pkgs.pkgsi686Linux.extest}/lib/libextest.so";
    };
    serviceConfig.ExecStart = "${pkgs.steam}/bin/steam";
  };


  # Define the wrapper script for launching Steam with LD_PRELOAD
  environment.systemPackages = with pkgs; [
steam
extest    
(pkgs.writeShellScriptBin "launch-steam" ''
	systemctl --user start steam
    '')
  (pkgs.makeDesktopItem {
    name = "steam-wayland";
desktopName = "Steam Wayland";
 exec = "${pkgs.writeShellScriptBin "launch-steam" '' systemctl --user start steam ''}/bin/launch-steam";
    icon = "steam";
    categories = ["Game"];
    terminal = false;  # Steam doesn't need a terminal
  })

  ];

}

