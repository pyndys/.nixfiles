{pkgs, ...}: {
  imports = [
    ./apps
    ./de-wm
    ./editors
    ./shell
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
}
