{ config, pkgs, ... }:
{
  programs.matugen.settings.templates.glow = {
    input_path = pkgs.matugenTemplates.glow;
    output_path = "${config.xdg.config.directory}/glow/matugen.json";
  };
}
