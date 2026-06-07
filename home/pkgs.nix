{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## CLI pkgs
    gh
    dust
    paru
    conceal
    nix-melt
    speedtest-go
    nur.repos.zerozawa.mikusays
    inputs.ggf.packages.${system}.default

    ## Dev
    go
    python313
  ];
}
