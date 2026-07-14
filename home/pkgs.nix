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
    osu-lazer-bin
    inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default

    ## CLI pkgs
    dust
    conceal
    nix-melt
    speedtest-go
    bitwarden-cli
    inputs.ggf.packages.${pkgs.stdenv.hostPlatform.system}.default

    ## Dev
    python3
    android-tools

    ## Others
    zip
    imagemagick
    colloid-icon-theme
  ];
}
