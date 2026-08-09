{ inputs, ... }:
{
  imports = [
    inputs.agenix.nixosModules.default
  ];
  age = {
    identityPaths = [ "/etc/agenix/id_ed25519" ];
    secrets = {
      "home/secrets/ssh/aur" = {
        file = ../home/secrets/ssh/aur.age;
        path = "/home/pyndys/.ssh/aur";
        owner = "pyndys";
        group = "users";
        mode = "0600";
      };
      "home/secrets/ssh/github" = {
        file = ../home/secrets/ssh/github.age;
        path = "/home/pyndys/.ssh/github";
        owner = "pyndys";
        group = "users";
        mode = "0600";
      };
      "home/secrets/ssh/codeberg" = {
        file = ../home/secrets/ssh/codeberg.age;
        path = "/home/pyndys/.ssh/codeberg";
        owner = "pyndys";
        group = "users";
        mode = "0600";
      };
      "home/secrets/osu-token" = {
        file = ../home/secrets/osu-token.age;
        owner = "pyndys";
        group = "users";
        mode = "0400";
      };
      "nixos/secrets/password" = {
        file = ./secrets/password.age;
        owner = "root";
        group = "root";
        mode = "0400";
      };
      "nixos/secrets/tg-ws-proxy" = {
        file = ./secrets/tg-ws-proxy.age;
        owner = "root";
        group = "root";
        mode = "0400";
      };
      "nixos/secrets/searxng" = {
        file = ./secrets/searxng.age;
        owner = "root";
        group = "root";
        mode = "0400";
      };
    };
  };
}
