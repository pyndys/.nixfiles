{
  imports = [
    ./de-wm
    ./hardware
    ./network
    ./software
    ./system
    ./pkgs.nix
    ./user.nix
  ];

  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      trusted-users = ["root" "pyndys"];
    };

    optimise = {
      automatic = true;
      dates = "weekly";
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };

  system.stateVersion = "25.05";
}
