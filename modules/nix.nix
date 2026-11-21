{
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
}
