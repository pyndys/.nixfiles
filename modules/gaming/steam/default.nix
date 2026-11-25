{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    package = pkgs.steamWithMillennium;
    extraCompatPackages = [ pkgs.proton-cachyos-bin_x86_64_v3 ];
    ## Needed for some games (e.g. Garry's Mod)
    fontPackages = with pkgs; [ liberation_ttf ];
  };

  hjem.users.pyndys.imports = [
    ./matugen.nix
  ];
}
