{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## Some apps
    loupe
    nautilus
    pear-desktop
    materialgram

    ## CLI pkgs
    gh
    dust
    conceal
    nix-melt
    speedtest-go
    bitwarden-cli
    nur.repos.zerozawa.mikusays
    inputs.ggf.packages.${system}.default

    ## Dev
    go
    python313
    android-tools
  ];
}
