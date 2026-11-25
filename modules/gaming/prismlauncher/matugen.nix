{ config, pkgs, ... }:
{
  programs.matugen.settings.templates.prismlauncher = {
    input_path = pkgs.matugenTemplates.prismlauncher;
    output_path = "${config.xdg.data.directory}/PrismLauncher/themes/matugen/theme.json";
  };
}
