{
  lib,
  pkgs,
  ...
}: {
  # System packages
  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];

  # Unfree
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-settings"
      "nvidia-x11"
      "osu-lazer"
      "osu-lazer-bin"
      "spotify"
      "steam"
      "steam-unwrapped"
    ];
}
