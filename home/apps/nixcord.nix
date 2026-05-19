{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];
  programs.nixcord = {
    enable = true;
    discord = {
      vencord.enable = false;
      equicord = {
        enable = true;
        package = pkgs.nur.repos.forkprince.equicord;
      };
    };
    config = {
      plugins = {
        ClearURLs.enable = true;
        anonymiseFileNames.enable = true;
        betterFolders = {
          enable = true;
          closeAllFolders = true;
          closeAllHomeButton = true;
          closeOthers = true;
        };
        betterUploadButton.enable = true;
        callTimer.enable = true;
        declutter.enable = true;
        gameActivityToggle.enable = true;
        messageLoggerEnhanced.enable = true;
        noTypingAnimation.enable = true;
        silentTyping.enable = true;
        viewRawVariant.enable = true;
        volumeBooster.enable = true;
        whoReacted.enable = true;
      };
    };
  };
}
