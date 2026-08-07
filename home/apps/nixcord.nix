{
  config,
  inputs,
  ...
}: {
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];
  programs.nixcord = {
    enable = true;
    discord.enable = false;

    goofcord = {
      enable = true;
      clientMod = "equicord";
      settings = {
        arrpc = true;
        customTitlebar = false;
        updateNotification = false;
        performanceFlags = true;
      };
    };

    goofcordConfig = {
      themes.matugen = "${config.xdg.configHome}/goofcord/themes/matugen.css";
      enabledThemes = ["matugen"];
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
        showRolesInChat.enable = true;
        silentTyping.enable = true;
        voiceRejoin.enable = true;
        volumeBooster.enable = true;
        whoReacted.enable = true;
      };
    };
  };
}
