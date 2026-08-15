{ config, inputs, ... }:
let
  templates = "${config.home.homeDirectory}/.nixfiles/home/matugen/templates";
in
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
      equibop.themeVariant = "dms";
    };
    settings.templates.telegram = {
      input_path = "${templates}/telegram.tdesktop-theme";
      output_path = "~/Documents/matugen.tdesktop-theme";
    };
  };
}
