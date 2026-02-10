{config, pkgs, ...}:
{
  home.packages = with pkgs; [kdePackages.partitionmanager kdePackages.kpmcore];
}
