{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    pcmanfm
    materialgram

    ## CLI pkgs
    gh
    dust
    conceal
    nix-melt
    microfetch
    speedtest-go
    bitwarden-cli
    nur.repos.zerozawa.mikusays

    ## Dev
    go
    python313
    android-tools
  ];
}
