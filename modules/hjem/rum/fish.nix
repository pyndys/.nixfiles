{ pkgs, ... }:
{
  rum.programs.fish = {
    enable = true;
    package = pkgs.fishMinimal;

    aliases = {
      du = "dust";
      rm = "cnc"; # Move to trash with conceal
      py = "python";

      ls = "eza";
      ll = "eza -l";
      la = "eza -a";
      lt = "eza --tree";
      lla = "eza -la";
    };

    plugins = {
      inherit (pkgs.fishPlugins)
        autopair
        git-abbr
        sponge
        ;
    };
  };
}
