{
  programs.dms-shell = {
    enable = true;

    systemd = {
      enable = true;
      restartIfChanged = true;
    };

    ## Dependencies for dms
    enableSystemMonitoring = false;
    enableVPN = false;
    enableDynamicTheming = true;
    enableAudioWavelength = true;
    enableCalendarEvents = false;
    enableClipboardPaste = true;
  };

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";
    configHome = "/home/pyndys";
  };
}
