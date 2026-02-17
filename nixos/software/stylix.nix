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
      url = "https://w.wallhaven.cc/full/vp/wallhaven-vppdjm.jpg";
      hash = "sha256-QtAf5YWTXrAVbHXva4MipKlpBgi8cl8bEiyK72+fzoI=";
    };

    colorGeneration = {
      polarity = "dark";
      scheme = "content";
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
