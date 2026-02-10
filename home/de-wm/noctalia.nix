{inputs, ...}: {
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;
    systemd.enable = true;
    settings = {
      bar = {
        barType = "Framed";
        widgets = {
          left = [
            {
              id = "ControlCenter";
              useDistroLogo = true;
              enableColorization = true;
            }
            {id = "Workspace";}
            {
              id = "ActiveWindow";
              maxWidth = 650;
            }
          ];
          center = [
            {id = "Clock";}
          ];
          right = [
            {id = "Tray";}
            {id = "NotificationHistory";}
            {id = "SystemMonitor";}
            {id = "Network";}
            {id = "Volume";}
            {id = "SessionMenu";}
          ];
        };
      };
      location = {
        weatherEnabled = false;
        firstDayOfWeek = 1;
      };
      appLauncher = {
        viewMode = "grid";
      };
      wallpaper = {
        enabled = true;
        overviewEnabled = true;
      };
      controlCenter.cards = [
        {
          id = "profile-card";
          enabled = true;
        }
        {
          id = "audio-card";
          enabled = true;
        }
        {
          id = "media-sysmon-card";
          enabled = true;
        }
      ];
      dock.enabled = false;
    };
  };
}
