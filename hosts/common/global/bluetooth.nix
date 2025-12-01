{config, ...}: 
{
  #enable bluetooth
  hardware.bluetooth.enable = true; 
  services.blueman.enable = true; 
    #enable button controls on bluetooth headsets
    systemd.user.services.mpris-proxy = {
     description = "Mpris proxy";
     after = [ "network.target" "sound.target" ];
     wantedBy = [ "default.target" ];
     serviceConfig.ExecStart = "${pkgs.bluez}/bin/mpris-proxy";
     };
}
