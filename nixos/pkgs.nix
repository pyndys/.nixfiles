{ lib, pkgs, ... }:
{
  ## System packages
  environment.systemPackages = with pkgs; [
    fast-nix-gc
    xwayland-satellite
  ];

  ## Unfree
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "discord"
      "nvidia-x11"
      "osu-lazer-bin"
      "steam"
      "steam-unwrapped"
    ];
}
