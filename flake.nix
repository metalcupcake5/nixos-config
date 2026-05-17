{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        mcsr-nixos = {
            url = "https://git.uku3lig.net/uku/mcsr-nixos/archive/main.tar.gz";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { ... }@inputs: {
        nixosConfigurations.microwave = inputs.nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs;
          };
          modules = [
            ./configuration.nix
            ./hardware-configuration.nix
            inputs.home-manager.nixosModules.home-manager
            ./hm.nix
          ];
        };    
    };
}
