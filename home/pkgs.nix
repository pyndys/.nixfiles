{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## Some apps
    loupe
    dialect
    goofcord
    nautilus
    parabolic
    mission-center
    telegram-desktop
    inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default

    ## CLI pkgs
    dust
    conceal
    nix-melt
    speedtest-go
    bitwarden-cli

    ## Dev
    python3
    android-tools

    ## Others
    zip
    imagemagick
  ];
}
