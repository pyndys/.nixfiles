{ pkgs, ... }: {
  home.packages = with pkgs; [
    clang
    rustc
    rustlings
  ];

  programs.cargo = {
    enable = true;
  };

  programs.helix = {
    extraPackages = [ pkgs.rust-analyzer ];
    languages.language = [
      {
        name = "rust";
        formatter.command = "${pkgs.rustfmt}/bin/rustfmt";
        auto-format = true;
      }
    ];
  };
}
