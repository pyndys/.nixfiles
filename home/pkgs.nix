{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    go
    dust
    conceal
    python3
    nix-melt
    speedtest-go
    inputs.ggf.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
