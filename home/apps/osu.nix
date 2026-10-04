{ inputs, ... }:
{
  imports = [
    inputs.nix-osu.homeModules.default
  ];
  programs.osu = {
    enable = true;
    extraGameSettings.ShowFirstRunSetup = false;
    extraFrameworkSettings.FrameSync = "Limit4x";
    settings = {
      ui.mainMenu = {
        background.seasonalMode = "Always";
        interfaceVoices = false;
        introSequence = "Welcome";
        menuTips = false;
      };
      graphics.showFps = true;
      prefer24HourTime = true;
    };
  };
}
