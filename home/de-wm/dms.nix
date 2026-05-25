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
      appLauncherGridColumns = 6;

      controlCenterWidgets = [
        {
          id = "volumeSlider";
          enabled = true;
          width = 50;
        }
        {
          id = "diskUsage";
          enabled = true;
          width = 25;
          mountPath = "/";
        }
        {
          id = "darkMode";
          enabled = true;
          width = 25;
        }
        {
          id = "audioInput";
          enabled = true;
          width = 25;
        }
        {
          id = "audioOutput";
          enabled = true;
          width = 25;
        }
        {
          id = "wifi";
          enabled = true;
          width = 50;
        }
      ];

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
        "lf"
        "nvim"
        "org.gnome.Loupe"
      ];

      ## Nord wallpaper
      wallpaperPath = pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/AngelJumbo/gruvbox-wallpapers/refs/heads/main/wallpapers/anime/grey_lain_wallpaper.jpg";
        hash = "sha256-cpchCwacmo1jriJx/CkAH/avqGXN80Cx6ABivpsGipY=";
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

      nixPackageRunner = {
        enable = true;
        settings = {
          terminal = "foot";
          execFlag = "-e";
        };
      };
    };
  };
}
