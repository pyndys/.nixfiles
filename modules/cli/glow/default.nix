{ config, pkgs, ... }:
{
  hjem.users.pyndys = {
    imports = [ ./matugen.nix ];
    packages = [ pkgs.glow ];

    xdg.config.files."glow/glow.yml".source = (pkgs.formats.yaml { }).generate "glow_config.yml" {
      style = "${config.hjem.users.pyndys.xdg.config.directory}/glow/matugen.json";
      showLineNumbers = true;
    };
  };
}
