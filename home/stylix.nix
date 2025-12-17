{
  imports = [
    ../nixos/software/stylix.nix
  ];

  stylix = {
    targets = {
      vencord.enable = false;
      zen-browser.profileNames = ["pyndys"];
    };
  };
}
