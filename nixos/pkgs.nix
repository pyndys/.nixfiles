{
  lib,
  inputs,
  pkgs,
  ...
}: {
  ## System packages
  environment.systemPackages = with pkgs; [
    ## For niri
    xwayland-satellite

    ## Basic pkgs
    wget
    git

    inputs.ggf.packages.${system}.default
  ];

  ## Unfree
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "discord"
      "nvidia-x11"
      "osu-lazer"
      "osu-lazer-bin"
      "spotify"
      "steam"
      "steam-unwrapped"
    ];
}
