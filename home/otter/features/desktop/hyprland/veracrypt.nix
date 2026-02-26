{config, pkgs, ...}:
{
  home.packages = with pkgs; [veracrypt hyprpaper];
}
