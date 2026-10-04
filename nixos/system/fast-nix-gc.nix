{ inputs, ... }: {
  imports = [
    inputs.fast-nix-gc.nixosModules.default
  ];
  services.fast-nix-gc = {
    enable = true;
    automatic = true;
    dates = "weekly";
    deleteOlderThan = "14d";
  };
}
