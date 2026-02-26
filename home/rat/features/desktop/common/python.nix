{config, pkgs, ...}:
{
  home.packages = with pkgs; [python315     python35
    python35Packages.numpy
python3.withPackages
    python35Packages.toolz];
}
