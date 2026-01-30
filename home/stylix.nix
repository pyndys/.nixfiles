{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    enableReleaseChecks = false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";

    fonts = {
      sansSerif.name = "Adwaita Sans";
      monospace.name = "JetBrainsMono Nerd Font";
    };

    autoEnable = true;

    targets.zen-browser.profileNames = ["pyndys"];
  };
}
