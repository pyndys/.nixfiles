{
  inputs,
  pkgs,
  ...
}: {
  nixpkgs.overlays = [inputs.millennium.overlays.default];

  programs.steam = {
    enable = true;
    package = pkgs.millennium-steam;
    extraCompatPackages = with pkgs; [
      proton-cachyos_x86_64_v3
      proton-ge-custom
    ];
    ## Needed for some games
    fontPackages = with pkgs; [liberation_ttf];
  };
}
