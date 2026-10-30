{ pkgs, ... }:
{
  rum.programs.helix = {
    enable = true;

    settings = {
      theme = "matugen";
      editor = {
        color-modes = true;
        line-number = "relative";
      };
    };

    languages.language = [
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
}
