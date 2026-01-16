{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
stylix = {
      url = "github:nix-community/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
nix-flatpak.url = "github:gmodena/nix-flatpak";
  };

  outputs = inputs@{ nixpkgs, home-manager, nixpkgs-unstable, stylix, nix-flatpak, ... }: 
  let 
    system = "x86_64-linux";
    lib = nixpkgs.lib; 
    pkgs = nixpkgs.legacyPackages.${system};
    pkgs-unstable = import nixpkgs-unstable {
	system = "x86_64-linux";
	config = {allowUnfree = true;}; 
};
    username = "rat";
    name = "rat";
  in {
    nixosConfigurations = { 

    evilbox = lib.nixosSystem {
    inherit system;
    modules = [
      hosts/evilbox 
	nix-flatpak.nixosModules.nix-flatpak
      stylix.nixosModules.stylix
      home-manager.nixosModules.home-manager
      {
         home-manager.extraSpecialArgs = { inherit pkgs-unstable; };
      }
   ];
    specialArgs = { 
      inherit username; 
      inherit name; 
      inherit pkgs-unstable; 
      };
    };

   vm  = lib.nixosSystem {
    inherit system;
    modules = [
      hosts/vm 
      stylix.nixosModules.stylix
      home-manager.nixosModules.home-manager
      {
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
