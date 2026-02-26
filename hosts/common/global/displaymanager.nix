{config, pkgs,  ...}:
{
  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
 # services.xserver.enable = true;
  #services.displayManager.sddm.wayland.enable = true;
  #services.displayManager.sddm.enable = true;
 services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --sessions ${config.services.xserver.displayManager.sessionData.desktops}/share/xsessions:${config.services.xserver.displayManager.sessionData.desktops}/share/wayland-sessions --remember --remember-user-session";
        user = "greeter";
      };
    };
  };  
#services.displayManager.cosmic-greeter.enable = true;
  # Configure keymap in X11
 # services.xserver.xkb = {
  #  layout = "us";
   # variant = "";
 # };
}

