{
  imports = [
    ./de-wm
    ./hardware
    ./network
    ./software
    ./system
    ./age.nix
    ./pkgs.nix
    ./user.nix
  ];

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      trusted-users = [
        "root"
        "pyndys"
      ];
    };
    optimise = {
      automatic = true;
      dates = "weekly";
    };
  };

  system.stateVersion = "25.05";
}
