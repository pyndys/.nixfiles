{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## Some apps
    loupe
    nautilus
    parabolic
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
    colloid-icon-theme
    inputs.miku-cursor.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
