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
        betterUploadButton.enable = true;
        gameActivityToggle.enable = true;
        fixSpotifyEmbeds.enable = true;
        messageLoggerEnhanced.enable = true;
        noTypingAnimation.enable = true;
        spotifyActivityToggle.enable = true;
        spotifyCrack.enable = true;
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
