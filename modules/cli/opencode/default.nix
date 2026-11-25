{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.opencode ];

  hjem.users.pyndys.imports = [
    ./matugen.nix
  ];
}
