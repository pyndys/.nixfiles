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
      "nvidia-x11"
      "steam"
      "steam-unwrapped"
    ];
}
