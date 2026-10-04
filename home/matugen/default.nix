{ config, inputs, ... }:
{
  imports = [
    inputs.matugenix.homeModules.default
  ];
  programs.matugen = {
    enable = true;
    targets = {
      autoEnable = true;
      autoTerminalColors = "dank16";
      helix.themeVariant = "noctalia";
      nixcord.themeVariant = "dms";
    };
    settings.templates.steam = {
      input_path = ./templates/steam.css;
      output_path = "${config.xdg.dataHome}/Steam/steamui/skins/Material-Theme/css/main/colors/matugen.css";
    };
  };
}
