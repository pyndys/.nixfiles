{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    loupe
    nautilus
    materialgram

    ## CLI pkgs
    gh
    dust
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
}
