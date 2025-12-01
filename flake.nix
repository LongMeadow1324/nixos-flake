{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      # The `follows` keyword in inputs is used for inheritance.
      # Here, `inputs.nixpkgs` of home-manager is kept consistent with
      # the `inputs.nixpkgs` of the current flake,
      # to avoid problems caused by different versions of nixpkgs.
      inputs.nixpkgs.follows = "nixpkgs";
    };
stylix = {
      url = "github:nix-community/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, nixpkgs-unstable, stylix, ... }: 
  let 
    system = "x86_64-linux";
    lib = nixpkgs.lib; 
    pkgs = nixpkgs.legacyPackages.${system};
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
    username = "rat";
    name = "rat";
  in {
    nixosConfigurations = { 
    evilbox = lib.nixosSystem {
    #"nixos" is the hostname, dont get this super confused, probably change this later too. 
    inherit system;
	 
    modules = [
      ./configuration.nix
      applications/SteamInputWayland.nix
      hosts/evilbox/evilbox.nix 
      stylix.nixosModules.stylix
      home-manager.nixosModules.home-manager
      {
         home-manager.useGlobalPkgs = true;
         home-manager.useUserPackages = true;
         home-manager.users.rat = {imports = [ ./home.nix];};
         home-manager.backupFileExtension = "hm-backup"; 
         home-manager.extraSpecialArgs = { inherit pkgs-unstable; };
      }
   ];
    specialArgs = { 
      inherit username; 
      inherit name; 
      inherit pkgs-unstable; 
      };
    };
  };

  };
}
