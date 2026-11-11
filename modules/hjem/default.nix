{ inputs, ... }:
{
  hjem = {
    extraModules = [ inputs.nixugen.hjemModules.default ];
    users.pyndys = {
      enable = true;
      directory = "/home/pyndys";
      user = "pyndys";
      imports = [
        ./ghostty.nix
        ./glow.nix
        ./helix.nix
        ./matugen.nix
      ];
    };
  };
}
