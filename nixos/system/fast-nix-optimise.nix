{ inputs, ... }: {
  imports = [
    inputs.fast-nix-gc.nixosModules.default
  ];
  services.fast-nix-optimise = {
    enable = true;
    automatic = true;
    dates = "weekly";
  };
}
