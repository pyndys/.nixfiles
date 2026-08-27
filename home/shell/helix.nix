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
        kotlin-language-server.command = "${pkgs.kotlin-language-server}/bin/kotlin-language-server";
      };
      language = [
        {
          name = "nix";
          language-servers = [ "nil" ];
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
        {
          name = "rust";
          language-servers = [ "rust-analyzer" ];
          formatter.command = "${pkgs.rustfmt}/bin/rustfmt";
          auto-format = true;
        }
        {
          name = "kotlin";
          language-servers = [ "kotlin-language-server" ];
          formatter = {
            command = "${pkgs.ktfmt}/bin/ktfmt";
            args = [
              "--enable-editorconfig"
              "--stdin-name=file.kt"
              "-"
            ];
          };
          auto-format = true;
        }
      ];
    };
  };
}
