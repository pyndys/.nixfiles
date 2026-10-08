{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    package = pkgs.helix_git;
    defaultEditor = true;
    extraPackages = [ pkgs.nil ];
    settings.editor = {
      color-modes = true;
      line-number = "relative";
    };
    languages.language = [
      {
        name = "nix";
        formatter.command = "${pkgs.nixfmt-rs}/bin/nixfmt";
        auto-format = true;
      }
    ];
  };
}
