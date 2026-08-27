{ inputs, ... }:
{
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];

  programs.nixcord = {
    enable = true;

    discord = {
      enable = true;
      equicord.enable = true;
      krisp.enable = true;
    };

    config = {
      frameless = true;
      plugins = {
        anonymiseFileNames.enable = true;
        betterFolders = {
          enable = true;
          closeOthers = true;
        };
        betterSettings.enable = true;
        betterUploadButton.enable = true;
        callTimer.enable = true;
        clearUrls.enable = true;
        declutter.enable = true;
        gameActivityToggle.enable = true;
        gitHubRepos.enable = true;
        messageLoggerEnhanced = {
          enable = true;
          saveImages = true;
        };
        noTypingAnimation.enable = true;
        showRolesInChat.enable = true;
        voiceRejoin.enable = true;
        volumeBooster.enable = true;
        whoReacted.enable = true;
      };
    };
  };
}
