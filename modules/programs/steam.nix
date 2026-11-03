{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-cachyos_x86_64_v3 ];
    ## Needed for some games (e.g. Garry's Mod)
    fontPackages = with pkgs; [ liberation_ttf ];
  };
}
