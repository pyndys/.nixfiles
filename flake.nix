{
  description = "myflake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    aagl = {
      url = "github:ezKEa/aagl-gtk-on-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    agenix = {
      url = "github:ryantm/agenix";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    areofyl-fetch = {
      url = "github:areofyl/fetch";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    chaotic = {
      url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    helium = {
      url = "github:schembriaiden/helium-browser-nix-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    millennium = {
      url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-osu = {
      url = "github:yunfachi/nix-osu";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        denix.inputs.home-manager.follows = "home-manager";
      };
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    proxy-suite = {
      url = "github:FUFSoB/proxy-suite-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    chaotic,
    ...
  }: {
    nixosConfigurations.cv01 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        ./nixos/configuration.nix
        home-manager.nixosModules.home-manager
        chaotic.nixosModules.default
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs;};
            users.pyndys = import ./home/home.nix;
          };
        }
      ];
    };
  };
}
