{ config, pkgs, ... }:
let
  t = pkgs.matugenTemplates;
  c = config.xdg.config.directory; # ~/.config/
in
{
  programs.matugen.settings.templates = {
    glow = {
      input_path = t.glow;
      output_path = "${c}/glow/matugen.json";
    };
    helix = {
      input_path = t.helix.noctalia;
      output_path = "${c}/helix/themes/matugen.toml";
    };
    opencode = {
      input_path = t.opencode;
      output_path = "${c}/opencode/themes/matugen.json";
    };
  };
}
