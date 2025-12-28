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
        messageLogger = {
          enable = true;
          ignoreSelf = true;
        };
        noTypingAnimation.enable = true;
        snowfall = {
          enable = true;
          maxSize = 5.0;
          typeOfSnow = "solid";
        };
        whoReacted.enable = true;
      };
    };
  };
}
