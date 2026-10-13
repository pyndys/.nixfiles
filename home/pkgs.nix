{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Some apps
    riff
    loupe
    nautilus
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
