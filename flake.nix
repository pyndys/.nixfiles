{
  description = "myflake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    darhud = {
      url = "github:DarSitam/darhud";
      flake = false;
    };

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

    geohide = {
      url = "github:Internet-Helper/GeoHideDNS";
      flake = false;
    };

    helium = {
      url = "github:amaanq/helium-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hjem = {
      url = "github:feel-co/hjem";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hjem-rum = {
      url = "github:snugnug/hjem-rum";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        hjem.follows = "hjem";
      };
    };

    millennium = {
      url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixcord = {
      url = "github:4evy/nixcord";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixugen.url = "github:pyndys/nixugen";

    proxy-suite = {
      url = "github:FUFSoB/proxy-suite-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        disko.follows = "disko";
      };
    };

    steam-config-nix = {
      url = "github:different-name/steam-config-nix";
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
    in
    {
      nixosConfigurations.cv01 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/cv01
          ./modules
          inputs.chaotic.nixosModules.default
          inputs.hjem.nixosModules.default
          {
            nixpkgs = {
              config.allowUnfree = true;
              overlays = [
                customOverlay
                inputs.nixugen.overlays.default
                inputs.millennium.overlays.default
              ];
            };
          }
        ];
      };
    };
}
