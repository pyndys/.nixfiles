{ pkgs, ... }: {
  packages = [ pkgs.helix ];

  xdg.config.files = {
    "helix/config.toml".source = (pkgs.formats.toml { }).generate "hx_config.toml" {
      theme = "matugen";
      editor = {
        color-modes = true;
        line-number = "relative";
      };
    };

    "helix/languages.toml".source = (pkgs.formats.toml { }).generate "hx_languages.toml" {
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
          formatter = {
            command = "${pkgs.rumdl}/bin/rumdl";
            args = [
              "fmt"
              "--silent"
              "-"
            ];
          };
          auto-format = true;
        }
      ];
    };
  };
}
