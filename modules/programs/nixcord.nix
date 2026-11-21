{ inputs, ... }:
{
  imports = [ inputs.nixcord.nixosModules.nixcord ];

  programs.nixcord = {
    enable = true;
    user = "pyndys";

    discord = {
      enable = true;
      equicord.enable = true;
    };

    extraConfig.nativeTitleBar = true;

    config = {
      enabledThemes = [ "matugen.css" ];
      plugins = {
        anonymiseFileNames.enable = true;
        betterSettings.enable = true;
        betterUploadButton.enable = true;
        callTimer.enable = true;
        clearUrls.enable = true;
        declutter.enable = true;
        gameActivityToggle.enable = true;
        gitHubRepos.enable = true;
        markdownTables.enable = true;
        messageLogger.enable = true;
        noTypingAnimation.enable = true;
        voiceRejoin.enable = true;
        volumeBooster.enable = true;
        whoReacted.enable = true;
      };
    };
  };
}
