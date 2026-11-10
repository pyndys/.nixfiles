{ inputs, ... }:
{
  imports = [ inputs.agenix.nixosModules.default ];
  age = {
    identityPaths = [ "/etc/agenix/id_ed25519" ];
    secrets = {
      "github-ssh" = {
        file = ../secrets/github-ssh.age;
        owner = "pyndys";
        group = "users";
        mode = "0600";
      };
      "password" = {
        file = ../secrets/password.age;
        owner = "root";
        group = "root";
        mode = "0400";
      };
      "tg-ws-proxy" = {
        file = ../secrets/tg-ws-proxy.age;
        owner = "pyndys";
        group = "users";
        mode = "0400";
      };
    };
  };
}
