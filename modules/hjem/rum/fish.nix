{ pkgs, ... }:
{
  rum.programs.fish = {
    enable = true;
    package = pkgs.fishMinimal;

    aliases = {
      du = "dust";
      py = "python";
      cat = "gat";

      ls = "eza --icons=auto";
      ll = "eza -l --icons=auto";
      la = "eza -a --icons=auto";
      lt = "eza --tree --icons=auto";
      lla = "eza -la --icons=auto";
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
