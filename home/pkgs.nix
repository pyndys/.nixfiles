{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## CLI pkgs
    dust
    paru
    conceal
    nix-melt
    onefetch
    speedtest-go
    inputs.ggf.packages.${pkgs.stdenv.hostPlatform.system}.default

    ## Dev
    go
    python313
  ];
}
