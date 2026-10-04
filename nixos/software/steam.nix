{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    ## Needed for some games (e.g. Garry's Mod)
    fontPackages = with pkgs; [ liberation_ttf ];
  };
}
