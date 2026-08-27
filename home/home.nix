{ config, ... }:
{
  imports = [
    ./apps
    ./matugen
    ./shell
    ./go.nix
    ./pkgs.nix
  ];

  home = {
    username = "pyndys";
    homeDirectory = "/home/pyndys";
    stateVersion = "26.05";
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      CONCEAL_FINDER = "skim";
      NH_FLAKE = "${config.home.homeDirectory}/.nixfiles";
    };
    shell.enableFishIntegration = true; # Fish everywhere!!!
    enableNixpkgsReleaseCheck = false;
  };
}
