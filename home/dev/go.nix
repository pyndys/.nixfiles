{ pkgs, ... }: {
  programs.go = {
    enable = true;
    telemetry.mode = "off";
  };

  programs.helix = {
    extraPackages = [ pkgs.gopls ];
    languages.language = [
      {
        name = "go";
        auto-format = true;
      }
    ];
  };
}
