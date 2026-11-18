{
  nix = {
    settings = {
      substituters = [
        "https://mirror.yandex.ru/nixos"
        "https://cache.nixos.org"
        "https://cache.lantian.pub/lantian"
      ];
      trusted-public-keys = [
        "lantian:WVGO7vsRMSEN+h7Lp7kv6SAmrkEXgUGbbXm7jMDjBuQ="
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
