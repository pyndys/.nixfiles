{
  inputs,
  pkgs,
  ...
}: {
  nixpkgs.overlays = [inputs.millennium.overlays.default];

  programs.steam = {
    enable = true;
    package = pkgs.millennium-steam;
    ## Needed for some games
    fontPackages = with pkgs; [liberation_ttf];
  };
}
