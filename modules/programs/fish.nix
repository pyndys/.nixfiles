{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    package = pkgs.fishMinimal;

    shellAliases = {
      du = "dust";
      py = "python";
      cat = "bat";

      ls = "eza --icons=auto";
      ll = "eza -l --icons=auto";
      la = "eza -a --icons=auto";
      lt = "eza --tree --icons=auto";
      lla = "eza -la --icons=auto";
    };
  };
}
