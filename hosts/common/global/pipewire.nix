{config, ...}:
{
  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    extraConfig.pipewire."92-low-latency" = {
      "context.properties" = {
  "default.clock.rate"          = 48000;
  "default.clock.allowed-rates" = [ 48000 ];
  "default.clock.quantum"       = 800;
  "default.clock.min-quantum"   = 512;
  "default.clock.max-quantum"   = 1024;
      };
    };
   wireplumber.extraConfig.pipewire."99-disable-suspend"."monitor.alsa.rules" = [
	{
	matches = [{"node.name" = "alsa_output.pci-0000_2b_00.1.hdmi-surround-extra2"; }];
	actions.update-props = {
	"session.suspend-timeout-seconds" = 0; 
	"node.always-process" = true; 
	"dither.method" = "wannamaker3";
	"dither.noise" = 1; 
};
}
];
  };
}
