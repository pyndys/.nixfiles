{ pkgs, ... }:
{
  hjem.users.pyndys = {
    imports = [ ./matugen.nix ];
    packages = [ pkgs.ghostty ];

    xdg.config.files."ghostty/config".text = ''
      theme = matugen
      app-notifications = false
      confirm-close-surface = false
    '';
  };
}
