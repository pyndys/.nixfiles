{inputs, ...}: {
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];
  programs.nixcord = {
    enable = true;
    discord.enable = false;
    equibop.enable = true;
    config = {
      plugins = {
        anonymiseFileNames.enable = true;
        betterUploadButton.enable = true;
        ClearURLs.enable = true;
        gameActivityToggle.enable = true;
        messageLoggerEnhanced.enable = true;
        noTypingAnimation.enable = true;
        readAllNotificationsButton.enable = true;
        snowfall = {
          enable = true;
          maxSize = 5.0;
          typeOfSnow = "solid";
        };
        spotifyActivityToggle.enable = true;
        steamStatusSync = {
          enable = true;
          goInvisibleIfActivityIsHidden = true;
        };
        viewRawVariant.enable = true;
        whoReacted.enable = true;
      };
    };
  };
}
