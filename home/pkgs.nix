{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## CLI pkgs
    dust
    conceal
    nix-melt
    speedtest-go
    inputs.ggf.packages.${pkgs.stdenv.hostPlatform.system}.default

    ## Dev
    go
    python313
  ];
}
