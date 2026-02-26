{config, ...}:
{
  programs.git = {
    enable = true;
	settings = {
	user.name = "rat"; 
	user.email = "example@email.com"; 
	init.defaultBranch = "main"; 
	safe.directory = "/etc/nixos";
};
  };
}
