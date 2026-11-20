{
  nix = {
    settings = {
      substituters = [
        "https://mirror.yandex.ru/nixos"
        "https://cache.nixos.org"
      ];
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
