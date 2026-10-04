{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    package = pkgs.helix_git;
    defaultEditor = true;
    settings.editor = {
      color-modes = true;
      line-number = "relative";
    };
    languages = {
      language-server = {
        nil.command = "${pkgs.nil}/bin/nil";
        ruff.command = "${pkgs.ruff}/bin/ruff";
        gopls.command = "${pkgs.gopls}/bin/gopls";
        rust-analyzer.command = "${pkgs.rust-analyzer-unwrapped}/bin/rust-analazer";
        markdown-oxide.command = "${pkgs.markdown-oxide}/bin/markdown-oxide";
      };
      language = [
        {
          name = "nix";
          formatter.command = "${pkgs.nixfmt-rs}/bin/nixfmt";
          auto-format = true;
        }
        {
          name = "python";
          auto-format = true;
        }
        {
          name = "go";
          auto-format = true;
        }
        {
          name = "rust";
          formatter.command = "${pkgs.rustfmt}/bin/rustfmt";
          auto-format = true;
        }
        {
          name = "markdown";
          auto-format = true;
        }
      ];
    };
  };
}
