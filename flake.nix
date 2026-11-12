{
  description = "myflake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dux-plugin-registry = {
      url = "github:duxlabs-dev/dux-plugin-registry";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    helium = {
      url = "github:amaanq/helium-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hjem = {
      url = "github:feel-co/hjem";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixcord = {
      url = "github:4evy/nixcord";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixugen.url = "github:pyndys/nixugen";
  };

  outputs =
    inputs@{ nixpkgs, ... }:
    let
      customOverlay = final: prev: {
        helium = inputs.helium.packages.${prev.stdenv.hostPlatform.system}.default;
      };
      mkHost =
        host:
        nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/${host}
            ./modules
            inputs.chaotic.nixosModules.default
            inputs.hjem.nixosModules.default
            {
              nixpkgs = {
                config.allowUnfree = true;
                overlays = [
                  customOverlay
                  inputs.nixugen.overlays.default
                ];
              };
            }
          ];
        };
    in
    {
      nixosConfigurations = {
        cv01 = mkHost "cv01";
        tetobook = mkHost "tetobook";
      };
    };
}
