{ config, pkgs, ... }:
let
  t = pkgs.matugenTemplates;
  l = config.xdg.data.directory; # ~/.local/share/
in
{
  programs.matugen.settings.templates = {
    prismlauncher = {
      input_path = t.prismlauncher;
      output_path = "${l}/PrismLauncher/themes/matugen/theme.json";
    };
    steam = {
      input_path = t.steam;
      output_path = "${l}/Steam/steamui/skins/Material-Theme/css/main/colors/matugen.css";
    };
  };
}
