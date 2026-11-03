{ config, pkgs, ... }:
let
  t = pkgs.matugenTemplates;
  c = config.xdg.config.directory; # ~/.config/
  l = config.xdg.data.directory; # ~/.local/share/
in
{
  programs.matugen = {
    enable = true;
    settings.templates = {
      discord = {
        input_path = t.discord.dux;
        output_path = "${c}/Equicord/themes/matugen.css";
      };
      ghostty = {
        input_path = t.ghostty.dux;
        output_path = "${c}/ghostty/themes/matugen";
      };
      helix = {
        input_path = t.helix.noctalia;
        output_path = "${c}/helix/themes/matugen.toml";
      };
      prismlauncher = {
        input_path = t.prismlauncher;
        output_path = "${l}/PrismLauncher/themes/matugen/theme.json";
      };
    };
  };
}
