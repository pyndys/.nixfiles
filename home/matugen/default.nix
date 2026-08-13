{ config, inputs, ... }:
let
  templates = "${config.home.homeDirectory}/.nixfiles/home/matugen/templates";
in
{
  imports = [
    inputs.matugen-nix.homeManagerModules.default
  ];
  programs.matugen = {
    enable = true;
    settings.templates = {
      millennium = {
        input_path = "${templates}/millennium.css";
        output_path = "~/.steam/steam/steamui/skins/Material-Theme/css/main/colors/matugen.css";
      };
      prismlauncher = {
        input_path = "${templates}/prismlauncher.json";
        output_path = "~/.local/share/PrismLauncher/themes/Matugen/theme.json";
      };
      telegram = {
        input_path = "${templates}/telegram.tdesktop-theme";
        output_path = "~/Documents/matugen.tdesktop-theme";
      };
    };
  };
}
