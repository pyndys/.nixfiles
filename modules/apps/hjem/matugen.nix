{ config, pkgs, ... }:
let
  t = pkgs.matugenTemplates;
  c = config.xdg.config.directory; # ~/.config/
in
{
  programs.matugen.settings.templates = {
    discord = {
      input_path = t.discord.dux;
      output_path = "${c}/Equicord/themes/matugen.css";
    };
    metrolist = {
      input_path = ./metrolist-template.properties;
      output_path = "${c}/metrolist/matugen.properties";
    };
  };
}
