{config, lib, ...}:
{

stylix = {
    enable = true;
    image = ../../../home/rat/wallpaper.jpg;
    polarity = "dark";
    targets.gtk.enable = true;
    targets.qt.enable = true; 
        targets.qt.platform = lib.mkForce "gnome"; 
};

}

