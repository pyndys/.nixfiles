{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## Some apps
    loupe
    dialect
    nautilus
    parabolic
    mission-center
    telegram-desktop
    inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default

    ## CLI pkgs
    dust
    conceal
    nix-melt
    microfetch
    speedtest-go
    bitwarden-cli

    ## Dev
    python3
    android-tools
  ];
}
