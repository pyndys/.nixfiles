{
  lib,
  pkgs,
  ...
}: {
  # System packages
  environment.systemPackages = with pkgs; [
    f2fs-tools # for f2fs
  ];

  # Unfree
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-settings"
      "nvidia-x11"
      "osu-lazer"
      "osu-lazer-bin"
      "steam"
      "steam-unwrapped"
    ];
}
