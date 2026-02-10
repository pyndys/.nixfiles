{pkgs, ...}: {
  imports = [
    ./apps
    ./de-wm
    ./editors
    ./shell
    ./theming
    ./pkgs.nix
  ];

  home = {
    username = "pyndys";
    homeDirectory = "/home/pyndys";
    stateVersion = "25.05";
    sessionVariables = {
      EDITOR = "nvim";
      CONCEAL_FINDER = "skim";
    };
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
