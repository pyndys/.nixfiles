{
  inputs,
  pkgs,
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

    ## Dependecies for dms
    enableSystemMonitoring = true;
    enableVPN = false;
    enableDynamicTheming = false;
    enableAudioWavelength = true;
    enableCalendarEvents = false;

    settings = {
      blurredWallpaperLayer = true; # wallpaper in overview
      launcherLogoMode = "os"; # NixOS logo
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

    session = {
      ## Remove garbage from launcher
      hiddenApps = [
        "kvantummanager"
        "footclient"
        "foot-server"
        "qt5ct"
        "qt6ct"
        "ca.andyholmes.Valent"
      ];

      ## Nord wallpaper
      wallpaperPath = pkgs.fetchurl {
        url = "https://github.com/ChrisTitusTech/nord-background/blob/main/ign_unsplash15.png?raw=true";
        hash = "sha256-McpnOvPQUnI2HDZnIn2UebGftY+aMyHB/l2CYY9r/V8=";
      };
    };

    plugins = {
      ## Calculator
      calculator = {
        enable = true;
        settings = {
          noTrigger = true;
          persistHistoryOnFile = true;
        };
      };

      ## Phone Connect with Valent
      dankKDEConnect.enable = true;

      ## Emoji
      emojiLauncher = {
        enable = true;
        settings.noTrigger = true;
      };
    };
  };
}
