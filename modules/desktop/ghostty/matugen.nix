{ config, pkgs, ... }:
{
  programs.matugen.settings.templates.ghostty = {
    input_path = pkgs.matugenTemplates.ghostty.dux;
    output_path = "${config.xdg.config.directory}/ghostty/themes/matugen";
  };
}
