{config, pkgs, lib, ...}:
{

stylix = {
    enable = true;
    image = ../../../home/rat/wallpaper.jpg;
    polarity = "dark";
    targets.gtk.enable = true;
    targets.qt.enable = true; 
        targets.qt.platform = lib.mkForce "gnome"; 

	fonts = { 
	monospace = {
		package = pkgs.nerd-fonts.jetbrains-mono; 
		name = "jetbrains-mono"; 
		};
	
	serif = config.stylix.fonts.monospace;
	sansSerif = config.stylix.fonts.monospace; 
	emoji = config.stylix.fonts.monospace; 
	}; 
};

}

