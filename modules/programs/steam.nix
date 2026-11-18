{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    package = pkgs.steamWithMillennium;
    extraCompatPackages = [ pkgs.proton-cachyos-bin ];
    ## Needed for some games (e.g. Garry's Mod)
    fontPackages = with pkgs; [ liberation_ttf ];
  };
}
