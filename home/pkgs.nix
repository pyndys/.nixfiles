{
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    ## Some apps
    materialgram

    ## CLI pkgs
    gh
    wget
    dust
    nitch
    conceal
    nix-melt
    microfetch
    speedtest-go
    nur.repos.zerozawa.mikusays

    ## Dev
    go
    python313
    android-tools
  ];

  ## Unfree
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "spotify"
    ];
}
