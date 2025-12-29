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
        ClearURLs.enable = true;
        messageLoggerEnhanced.enable = true;
        noTypingAnimation.enable = true;
        snowfall = {
          enable = true;
          maxSize = 5.0;
          typeOfSnow = "solid";
        };
        spotifyActivityToggle.enable = true;
        viewRawVariant.enable = true;
        whoReacted.enable = true;
      };
    };
  };
}
