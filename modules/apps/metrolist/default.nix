{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.metrolist ];

  hjem.users.pyndys.imports = [
    ./matugen.nix
  ];
}
