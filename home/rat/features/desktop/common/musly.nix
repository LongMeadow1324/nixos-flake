{config, pkgs, ...}:
{
  home.packages = with pkgs; [musly];
}
