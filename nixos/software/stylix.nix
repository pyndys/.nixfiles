{pkgs, ...}: {
  stylix = {
    enable = true;
    enableReleaseChecks = false;

    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/we/wallhaven-weprop.jpg";
      hash = "sha256-PS0O+IG8Mw5xLjMRcYM6mEtCwEOismM+DMzTpI4Qdac=";
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";

    fonts = {
      sansSerif.name = "Adwaita Sans";
      monospace.name = "JetBrainsMono Nerd Font";
    };

    autoEnable = true;
  };
}
