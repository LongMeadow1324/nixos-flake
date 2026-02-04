{config, pkgs, ...}:
{
	home.packages = with pkgs; [
		gedit 
		pavucontrol
		helvum
		blueberry
];

xdg.userDirs.enable = true; 
xdg.userDirs.createDirectories = true; 
xdg.userDirs.documents = "/home/rat/ratdocs";
xdg.userDirs.download = "/home/rat/ratgrab";


}

