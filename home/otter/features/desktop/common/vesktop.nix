{config, ...}: 
{
  programs.vesktop = {
	enable = true; 
	settings = {
	discordBranch = "stable";
	minimizeToTray = true; 
	arRPC = true; 
	hardwareVideoAcceleration = true; 
	enableSplashScreen = false;
	splashColor = "rgb(219, 220, 223)"; 
};
}; 
} 

