{pkgs, ...}: {
  gtk = {
    enable = true;
    iconTheme = {
      name = "Colloid";
      package = pkgs.colloid-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };
}
