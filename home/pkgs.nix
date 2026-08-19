{
  inputs,
  pkgs,
  ...
}:
{
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
    leet-helix
    microfetch
    speedtest-go
    bitwarden-cli

    ## Dev
    python3
    android-tools
    payload-dumper-go

    ## Others
    wl-clipboard-rs
  ];
}
