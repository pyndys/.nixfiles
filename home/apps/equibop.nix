{
  programs.equibop = {
    enable = true;
    settings = {
      discordBranch = "stable";
      minimizeToTray = true;
      arRPC = true;
      enableSplashScreen = false;
    };
    equicord.settings = {
      enabledThemes = ["dank-discord.css"];
      winNativeTitleBar = false;
      plugins = {
        AnonymiseFileNames.enabled = true;
        BetterFolders = {
          enabled = true;
          closeOthers = true;
        };
        BetterSettings.enabled = true;
        BetterUploadButton.enabled = true;
        CallTimer.enabled = true;
        ClearUrls.enabled = true;
        Declutter.enabled = true;
        GameActivityToggle.enabled = true;
        GitHubRepos.enabled = true;
        MessageLoggerEnhanced = {
          enabled = true;
          saveImages = true;
        };
        ShowRolesInChat.enabled = true;
        SilentTyping.enabled = true;
        VoiceRejoin.enabled = true;
        VolumeBooster.enabled = true;
        WhoReacted.enabled = true;
      };
    };
  };
}
