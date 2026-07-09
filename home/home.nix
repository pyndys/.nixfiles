{
  imports = [
    ./age.nix
    ./services
    ./shell
    ./pkgs.nix
  ];

  home = {
    username = "pyndys";
    homeDirectory = "/home/pyndys";
    stateVersion = "26.05";
    sessionVariables = {
      CONCEAL_FINDER = "skim";
      EDITOR = "nvim";
    };
    shell.enableFishIntegration = true; # Fish everywhere!!!
    enableNixpkgsReleaseCheck = false;
  };
}
