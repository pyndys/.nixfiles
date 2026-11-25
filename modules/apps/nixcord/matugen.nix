{ config, pkgs, ... }:
{
  programs.matugen.settings.templates.discord = {
    input_path = pkgs.matugenTemplates.discord.dux;
    output_path = "${config.xdg.config.directory}/Equicord/themes/matugen.css";
  };
}
