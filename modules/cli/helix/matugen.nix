{ config, pkgs, ... }:
{
  programs.matugen.settings.templates.helix = {
    input_path = pkgs.matugenTemplates.helix.noctalia;
    output_path = "${config.xdg.config.directory}/helix/themes/matugen.toml";
  };
}
