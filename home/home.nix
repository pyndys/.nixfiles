{
  imports = [
    ./apps
    ./de-wm
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
    shell.enableFishIntegration = true; # Fish everywhere!!!
  };
}
