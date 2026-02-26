{config, pkgs, ...}: 
{
  #enable bluetooth
 hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
      input = {
        General = {
          UserspaceHID = true;
        };
      };
    };
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;
services.libinput.enable = true;

    # multi-touch gesture recognizer
    services.touchegg.enable = true;

  environment.systemPackages = with pkgs; [
    bluez
    bluez-tools
    libinput
  ];
 
 services.blueman.enable = true; 
   #enable button controls on bluetooth headsets
    systemd.user.services.mpris-proxy = {
     description = "Mpris proxy";
     after = [ "network.target" "sound.target" ];
     wantedBy = [ "default.target" ];
     serviceConfig.ExecStart = "${pkgs.bluez}/bin/mpris-proxy";
     };
}
