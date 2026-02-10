{pkgs, ...}: {
  qt = {
    enable = true;
    style = {
      name = "breeze";
      package = pkgs.kdePackages.breeze;
    };
    qt5ctSettings.Appearance = {
      style = "breeze";
      icon_theme = "Colloid";
    };
    qt6ctSettings.Appearance = {
      style = "breeze";
      icon_theme = "Colloid";
    };
  };
}
