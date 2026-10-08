{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Some apps
    loupe
    nautilus
    parabolic
    materialgram

    ## CLI pkgs
    dust
    conceal
    nix-melt
    microfetch
    speedtest-go
    bitwarden-cli

    ## Others
    wl-clipboard-rs
    morewaita-icon-theme
  ];
}
