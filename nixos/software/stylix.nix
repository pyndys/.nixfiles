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
      url = "https://w.wallhaven.cc/full/po/wallhaven-po8ow9.png";
      hash = "sha256-ZaC+TDyycm3ByxCff9XTTpBu323ptCSbC07g/rf7p04=";
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
