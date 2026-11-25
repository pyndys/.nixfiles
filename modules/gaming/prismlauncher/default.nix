{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.prismlauncher ];

  hjem.users.pyndys.imports = [
    ./matugen.nix
  ];
}
