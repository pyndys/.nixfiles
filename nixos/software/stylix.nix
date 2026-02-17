{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  stylix = {
    enable = true;
    enableReleaseChecks = false;

    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/gp/wallhaven-gpdjk3.jpg";
      hash = "sha256-BI6KYyU0KX6N1n82Ss3ySCXFiTphaQBz91+EQs1ZKrU=";
    };

    colorGeneration = {
      polarity = "dark";
      #scheme = "content";
      lightness.dark = 0.02;
    };

    fonts = {
      sansSerif = {
        name = "Google Sans";
        package = pkgs.google-fonts;
      };
      monospace = {
        name = "JetBrainsMono Nerd Font";
        package = pkgs.nerd-fonts.jetbrains-mono;
      };
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };
    };

    cursor = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 24;
    };

    icons = {
      enable = true;
      dark = "Colloid";
      package = pkgs.colloid-icon-theme;
    };

    autoEnable = true;
  };
}
