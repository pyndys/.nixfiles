{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    nautilus
    materialgram

    ## CLI pkgs
    gh
    wget
    dust
    conceal
    nix-melt
    microfetch
    speedtest-go
    nur.repos.zerozawa.mikusays

    ## Dev
    go
    git
    python313
    android-tools
  ];
}
