{ inputs, ... }:
{
  imports = [
    inputs.agenix.nixosModules.default
  ];
  age = {
    identityPaths = [ "/etc/agenix/id_ed25519" ];
    secrets = {
      "aur" = {
        file = ../home/secrets/ssh/aur.age;
        owner = "pyndys";
        group = "users";
        mode = "0600";
      };
      "github" = {
        file = ../home/secrets/ssh/github.age;
        owner = "pyndys";
        group = "users";
        mode = "0600";
      };
      "codeberg" = {
        file = ../home/secrets/ssh/codeberg.age;
        owner = "pyndys";
        group = "users";
        mode = "0600";
      };
      "osu-refresh-token" = {
        file = ../home/secrets/osu-token.age;
        owner = "pyndys";
        group = "users";
        mode = "0400";
      };
      "password" = {
        file = ./secrets/password.age;
        owner = "root";
        group = "root";
        mode = "0400";
      };
      "tg-ws-proxy" = {
        file = ./secrets/tg-ws-proxy.age;
        owner = "root";
        group = "root";
        mode = "0400";
      };
      "searxng" = {
        file = ./secrets/searxng.age;
        owner = "root";
        group = "root";
        mode = "0400";
      };
    };
  };
}
