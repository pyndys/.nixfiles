{pkgs, ...}: {
  imports = [
    ./apps
    ./editors
    ./shell
    ./pkgs.nix
    ./stylix.nix
  ];

  home = {
    username = "pyndys";
    homeDirectory = "/home/pyndys";
    stateVersion = "25.05";
  };

  nix.package = pkgs.nix;

  programs.home-manager.enable = true;

  services.home-manager.autoExpire = {
    enable = true;
    frequency = "weekly";
    timestamp = "-30 days";

    store = {
      cleanup = true;
      options = "--delete-older-than 30d";
    };
  };
}
