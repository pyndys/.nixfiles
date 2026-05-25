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
    stateVersion = "26.05";
    sessionVariables = {
      EDITOR = "nvim";
      NIXOS_OZONE_WL = "1";
    };
    shell.enableFishIntegration = true; # Fish everywhere!!!
    enableNixpkgsReleaseCheck = false;
  };
}
