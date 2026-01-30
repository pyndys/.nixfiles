{
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    ## Some apps
    haruna
    logseq
    adwsteamgtk
    materialgram
    transmission_4-qt6

    ## CLI pkgs
    wget
    dust
    nix-melt
    pfetch-rs
    microfetch
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
