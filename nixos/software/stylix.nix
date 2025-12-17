{pkgs, ...}: {
  stylix = {
    enable = true;
    enableReleaseChecks = false;

    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/m9/wallhaven-m9q6e9.jpg";
      hash = "sha256-5tYUMASHV9Wsu2MpbhdsFXKtm+NP2hz074N4o9Xu0xE=";
    };
    polarity = "dark";

    fonts = {
      sansSerif.name = "Adwaita Sans";
      monospace.name = "JetBrainsMono Nerd Font";
    };

    autoEnable = true;
  };
}
