{config, pkgs, ...}:
{
xdg.configFile."openvr/openvrpaths.vrpath".force = true; 
xdg.configFile."openvr/openvrpaths.vrpath".text = ''
  {
    "config" :
    [
      "~/.local/share/Steam/config"
    ],
    "external_drivers" : null,
    "jsonid" : "vrpathreg",
    "log" :
    [
      "~/.local/share/Steam/logs"
    ],
    "runtime" :
    [
       "${pkgs.xrizer}/lib/xrizer"
    ],
    "version" : 1
  }
'';

}
