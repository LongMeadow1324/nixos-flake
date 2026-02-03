{config, pkgs, ...}:
{
  home.packages = with pkgs; [opensnitch-ui];
}
