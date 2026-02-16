{
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    ## Some apps
    nautilus
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
    bitwarden-cli
    nur.repos.zerozawa.mikusays

    ## Dev
    go
    git
    python313
    android-tools
  ];
}
