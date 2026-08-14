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
      autoDank16 = true;
      helix.enable = false;
    };
    settings.templates = {
      millennium = {
        input_path = "${templates}/millennium.css";
        output_path = "~/.steam/steam/steamui/skins/Material-Theme/css/main/colors/matugen.css";
      };
      telegram = {
        input_path = "${templates}/telegram.tdesktop-theme";
        output_path = "~/Documents/matugen.tdesktop-theme";
      };
    };
  };
}
