{pkgs, ...}: {
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [proton-cachyos_x86_64_v3];
    ## Needed for some games
    fontPackages = with pkgs; [liberation_ttf];
  };
}
