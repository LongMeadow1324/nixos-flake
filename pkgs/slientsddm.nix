{config, pkgs, inputs, ...}:
{
inputs = {
   silentSDDM = {
      url = "github:uiriansan/SilentSDDM";
      inputs.nixpkgs.follows = "nixpkgs";
   };
};

 imports = [inputs.silentSDDM.nixosModules.default];
    programs.silentSDDM = {
        enable = true;
        theme = "catppuccin-mocha";
        # settings = { ... }; see example in module
    };
}
