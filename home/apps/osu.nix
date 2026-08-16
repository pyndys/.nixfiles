{
  config,
  osConfig,
  inputs,
  ...
}:
{
  imports = [
    inputs.nix-osu.homeModules.default
  ];
  programs.osu = {
    enable = true;
    dataDir = "${config.home.homeDirectory}/.local/share/osu";
    # tokenFile = osConfig.age.secrets."osu-refresh-token".path;
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
