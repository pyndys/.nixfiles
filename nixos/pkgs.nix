{
  lib,
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
  ];

  ## Unfree
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "osu-lazer-bin"
      "steam"
      "steam-unwrapped"
    ];
}
