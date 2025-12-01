{config, pkgs, ...}:
{
  programs.librewolf = {
	enable = true; 
	policies = {
	SanitizeOnShutdown = {
		Cache = true; 
		FormData = true; 
		Cookies = false; 
		History = true; 
		};
	
	ExtensionSettings = {
		#purple star theme
		"{4634d9ed-e1f8-4a04-81ee-9425b66e1642}" = { 
				install_url = "https://addons.mozilla.org/firefox/downloads/file/3620954/purple_night_theme-1.0.xpi";
				installation_mode = "force_installed"; 
			};
		};
	}; 
};

}

