{ config, pkgs, ... }:
{
  programs.matugen.settings.templates.opencode = {
    input_path = pkgs.matugenTemplates.opencode;
    output_path = "${config.xdg.config.directory}/opencode/themes/matugen.json";
  };
}
