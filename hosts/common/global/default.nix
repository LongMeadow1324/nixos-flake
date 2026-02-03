{ config, pkgs, pkgs-unstable, ...}:
{
  imports = [
./displaymanager.nix
./locale.nix
./nautilus.nix
./network.nix
./pipewire.nix
./stylix.nix
./fonts.nix
];

 environment.systemPackages = with pkgs; [
    vim
    wget
    git
    nerd-fonts.jetbrains-mono
    nwg-displays
];

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  services.printing.enable = true;

  programs.firefox.enable = true; 

  home-manager.useGlobalPkgs = true;
  home-manager.backupFileExtension = "hm-backup"; 
}
