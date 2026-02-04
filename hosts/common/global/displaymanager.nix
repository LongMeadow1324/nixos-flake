{config, ...}:
{
  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
 # services.xserver.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.sddm.enable = true;
  #services.displayManager.lemurs.enable = true;
  # Configure keymap in X11
 # services.xserver.xkb = {
  #  layout = "us";
   # variant = "";
 # };
}

