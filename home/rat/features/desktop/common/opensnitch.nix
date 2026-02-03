{config, pkgs, ...}:
{
  home.packages = with pkgs; [opensnitch opensnitch-ui];
}
