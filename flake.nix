{
  description = "myflake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    bakapkgs = {
      url = "github:pyndys/bakapkgs";
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

    fast-nix-gc = {
      url = "github:Mic92/fast-nix-gc";
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

    zapret-discord-youtube = {
      url = "github:kartavkun/zapret-discord-youtube";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ nixpkgs, ... }:
    let
      customOverlay = final: prev: {
        fast-nix-gc = inputs.fast-nix-gc.packages.${prev.stdenv.hostPlatform.system}.default;
        helium = inputs.helium.packages.${prev.stdenv.hostPlatform.system}.default;
      };
      mkHost =
        host:
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
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
                  inputs.bakapkgs.overlays.default
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
