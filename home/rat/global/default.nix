{config, pkgs, ...}:
{
	home.packages = with pkgs; [
		gedit 
		pavucontrol
		helvum
		blueberry
];
}

