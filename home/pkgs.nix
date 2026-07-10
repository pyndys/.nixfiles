{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    dust
    conceal
    python3
    nix-melt
    speedtest-go
    bitwarden-cli
    inputs.ggf.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
