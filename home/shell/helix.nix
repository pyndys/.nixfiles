{
  inputs,
  pkgs,
  ...
}:
{
  programs.helix = {
    enable = true;
    package = pkgs.helix_git;
    defaultEditor = true;
    settings = {
      theme = "base16_transparent";
      editor = {
        color-modes = true;
        line-number = "relative";
      };
    };
    languages = {
      language-server = {
        nixd.command = "${pkgs.nixd}/bin/nixd";
        ruff.command = "${pkgs.ruff}/bin/ruff";
        gopls.command = "${pkgs.gopls}/bin/gopls";
      };
      language = [
        {
          name = "nix";
          language-servers = [ "nixd" ];
          formatter.command = "${
            inputs.nixfmt-rs.packages.${pkgs.stdenv.hostPlatform.system}.default
          }/bin/nixfmt";
          auto-format = true;
        }
        {
          name = "python";
          language-servers = [ "ruff" ];
          auto-format = true;
        }
        {
          name = "go";
          language-servers = [ "gopls" ];
          auto-format = true;
        }
      ];
    };
  };
}
