{inputs, ...}: {
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];
  programs.nixcord = {
    enable = true;
    discord.enable = false;
    equibop.enable = true;
    config = {
      autoUpdate = true;
      plugins = {
        ClearURLs.enable = true;
        anammox.enable = true;
        anonymiseFileNames.enable = true;
        betterFolders = {
          enable = true;
          closeAllFolders = true;
          closeAllHomeButton = true;
          closeOthers = true;
        };
        betterUploadButton.enable = true;
        callTimer.enable = true;
        gameActivityToggle.enable = true;
        messageLoggerEnhanced.enable = true;
        noTypingAnimation.enable = true;
        silentTyping.enable = true;
        spotifyActivityToggle.enable = true;
        spotifyCrack.enable = true;
        viewRawVariant.enable = true;
        volumeBooster.enable = true;
        whoReacted.enable = true;
      };
    };
  };
}
