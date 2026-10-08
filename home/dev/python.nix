{ pkgs, ... }: {
  home.packages = with pkgs; [
    python3
  ];

  programs.helix = {
    extraPackages = [ pkgs.ruff ];
    languages.language = [
      {
        name = "python";
        auto-format = true;
      }
    ];
  };
}
