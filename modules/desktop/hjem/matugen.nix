{ config, pkgs, ... }:
let
  t = pkgs.matugenTemplates;
  c = config.xdg.config.directory; # ~/.config/
in
{
  programs.matugen = {
    enable = true;
    settings.templates.ghostty = {
      input_path = t.ghostty.dux;
      output_path = "${c}/ghostty/themes/matugen";
    };
  };
}
