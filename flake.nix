{
  description = "myflake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    chaotic = {
      url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    darhud = {
      url = "github:DarSitam/darhud";
      flake = false;
    };

    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dms = {
      url = "github:AvengeMedia/DankMaterialShell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dms-plugin-registry = {
      url = "github:AvengeMedia/dms-plugin-registry";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fast-nix-gc = {
      url = "github:Mic92/fast-nix-gc";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    geohide = {
      url = "github:Internet-Helper/GeoHideDNS";
      flake = false;
    };

    matugenix.url = "github:pyndys/matugenix";

    nix-osu = {
      url = "github:yunfachi/nix-osu";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        denix.inputs.home-manager.follows = "home-manager";
      };
    };

    nixcord = {
      url = "github:4evy/nixcord";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    nixfmt-rs = {
      url = "github:Mic92/nixfmt-rs";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
      };
    };

    nixos-millennium = {
      url = "github:re1n0/nixos-millennium/release";
      inputs.nixpkgs.follows = "nixpkgs";
    };

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

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      chaotic,
      fast-nix-gc,
      nixfmt-rs,
      nixos-millennium,
      ...
    }:
    let
      customOverlay = final: prev: {
        fast-nix-gc = fast-nix-gc.packages.${prev.stdenv.hostPlatform.system}.default;
        nixfmt-rs = nixfmt-rs.packages.${prev.stdenv.hostPlatform.system}.default;
      };
    in
    {
      nixosConfigurations.cv01 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./nixos/configuration.nix
          home-manager.nixosModules.home-manager
          nixos-millennium.nixosModules.default
          chaotic.nixosModules.default
          {
            nixpkgs.overlays = [ customOverlay ];
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs; };
              users.pyndys = import ./home/home.nix;
            };
          }
        ];
      };
    };
}
