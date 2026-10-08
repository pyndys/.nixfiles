{ pkgs, ... }: {
  programs.helix = {
    extraPackages = [ pkgs.markdown-oxide ];
    languages.language = [
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
