{config, pkgs, ...}:
{
  home.packages = with pkgs; [rhythmbox libgpod strawberry picard];
}
