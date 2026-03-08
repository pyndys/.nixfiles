{inputs, ...}: {
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
    enableDynamicTheming = false;
    enableAudioWavelength = true;
    enableCalendarEvents = false;

    settings = {
      blurredWallpaperLayer = true;
      showWeather = false;
      launcherLogoMode = "os";
      barConfigs = [
        {
          id = "default";
          name = "Main Bar";
          enabled = true;
          leftWidgets = [
            "launcherButton"
            "workspaceSwitcher"
            "focusedWindow"
          ];
          centerWidgets = [
            "music"
            "clock"
            "dankKDEConnect"
          ];
          rightWidgets = [
            "systemTray"
            "capsLockIndicator"
            "notificationButton"
            "clipboard"
            "keyboard_layout_name"
            "cpuUsage"
            "controlCenterButton"
          ];
          spacing = 0;
          squareCorners = true;
          gothCornersEnabled = true;
          openOnOverview = true;
        }
      ];
      weatherEnabled = false;
    };

    plugins = {
      calculator = {
        enable = true;
        settings = {
          noTrigger = true;
          persistHistoryOnFile = true;
        };
      };
      dankKDEConnect.enable = true;
      emojiLauncher = {
        enable = true;
        settings.noTrigger = true;
      };
    };
  };
}
