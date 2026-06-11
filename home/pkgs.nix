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
    nur.repos.zerozawa.mikusays
    inputs.ggf.packages.${system}.default

    ## Dev
    go
    python313
  ];
}
