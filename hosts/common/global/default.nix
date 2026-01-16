{ config, pkgs, pkgs-unstable, ...}:
{
  imports = [
./bluetooth.nix
./displaymanager.nix
./locale.nix
./mullvad.nix
./nautilus.nix
./network.nix
./pipewire.nix
./steam.nix    
./SteamInputWayland.nix
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
