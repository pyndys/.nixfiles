{ inputs, ... }:
{
  hjem = {
    extraModules = [ inputs.nixugen.hjemModules.default ];
    users.pyndys = {
      enable = true;
      directory = "/home/pyndys";
      user = "pyndys";
      imports = [
        ./matugen
        ./ghostty.nix
        ./glow.nix
        ./helix.nix
      ];
    };
  };
}
