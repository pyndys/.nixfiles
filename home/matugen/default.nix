{ inputs, ... }:
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
    settings.templates.telegram = {
      input_path = ./templates/telegram.tdesktop-theme;
      output_path = "~/Documents/matugen.tdesktop-theme";
    };
  };
}
