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
      substituters = [ "https://mirror.yandex.ru/nixos" ];
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      trusted-users = [
        "root"
        "pyndys"
      ];
    };
  };

  system.stateVersion = "25.05";
}
