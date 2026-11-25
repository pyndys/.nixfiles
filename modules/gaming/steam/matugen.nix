{ config, pkgs, ... }:
{
  programs.matugen.settings.templates.steam = {
    input_path = pkgs.matugenTemplates.steam;
    output_path = "${config.xdg.data.directory}/Steam/steamui/skins/Material-Theme/css/main/colors/matugen.css";
  };
}
