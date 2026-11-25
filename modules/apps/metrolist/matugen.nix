{ config, ... }:
{
  programs.matugen.settings.templates.metrolist = {
    input_path = ./metrolist-template.properties;
    output_path = "${config.xdg.config.directory}/metrolist/matugen.properties";
  };
}
