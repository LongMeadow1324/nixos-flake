
{config, pkgs-unstable, ...}:
{
  home.packages = with pkgs-unstable; [stremio];
nixpkgs.config.permittedInsecurePackages = [
                "qtwebengine-5.15.19"
              ];
}
