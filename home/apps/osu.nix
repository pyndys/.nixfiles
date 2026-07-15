{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nix-osu.homeModules.default
  ];
  programs.osu = {
    enable = true;
    package = pkgs.osu-lazer-bin;
    releaseStream = "tachyon";
    extraGameSettings.ShowFirstRunSetup = false;
    extraFrameworkSettings.FrameSync = "Limit4x";
    settings = {
      input = {
        joystick.enable = false;
        keyboard.enable = true;
        midi.enable = false;
        mouse.enable = true;
        tablet.enable = false;
      };
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
