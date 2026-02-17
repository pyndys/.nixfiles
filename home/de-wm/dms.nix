{
  inputs,
  config,
  ...
}: {
  imports = with inputs; [
    dms.homeModules.dank-material-shell
    dms.homeModules.niri
    dms-plugin-registry.modules.default
  ];

  programs.dank-material-shell = {
    enable = true;
    niri = {
      enableKeybinds = false;
      enableSpawn = false;
    };
    systemd = {
      enable = true;
      restartIfChanged = true;
    };

    enableSystemMonitoring = true;
    enableVPN = false;
    enableDynamicTheming = true;
    enableAudioWavelength = true;
    enableCalendarEvents = false;

    plugins = {
      calculator = {
        enable = true;
        settings = {
          noTrigger = true;
          persistHistoryOnFile = true;
        };
      };
      dankBitwarden = {
        enable = true;
        settings.trigger = "bw";
      };
      emojiLauncher = {
        enable = true;
        settings.noTrigger = true;
      };
    };
  };
}
