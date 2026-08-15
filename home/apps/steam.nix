{
  inputs,
  pkgs,
  ...
}:
{
  imports = [
    inputs.nixos-millennium.homeManagerModules.default
  ];
  programs.steam = {
    theme = pkgs.millenniumThemes.material-theme;
    plugins = with pkgs.millenniumPlugins; [ extendium ];
    millenniumConfig.themes.conditions."material-theme-steam" = {
      "Bottom Bar Style" = "Floating";
      "Font" = "Google Sans";
      "Game Icons Shape" = "Rounded Square";
      "Groups/Curators Picture Shape" = "Circle";
      "Hide Activity Posting" = "yes";
      "Hide Add Shelf" = "yes";
      "Hide Big Picture Mode Button" = "yes";
      "Hide Broadcasting Containers" = "yes";
      "Hide News Button" = "yes";
      "Hide Scrollbar" = "yes";
      "Hide URL Bar" = "yes";
      "Hide Window Control Buttons" = "yes";
      "Icons" = "Rounded";
      "Loading Style" = "Color Scheme";
      "Profile Picture Shape" = "Circle";
      "Store Header Always Visible" = "yes";
      "Toolbar Icon" = "Gemini";
      "Toolbar Title Based on Icon" = "no";
      "What's New" = "Hide";
    };
  };
}
