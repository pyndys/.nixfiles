{inputs, ...}: {
  imports = [
    inputs.dms-plugin-registry.nixosModules.default
  ];
  programs.dms-shell = {
    enable = true;

    systemd = {
      enable = true;
      restartIfChanged = true;
    };

    ## Dependencies for dms
    enableSystemMonitoring = true;
    enableVPN = false;
    enableDynamicTheming = true;
    enableAudioWavelength = true;
    enableCalendarEvents = false;
    enableClipboardPaste = true;

    plugins = {
      dankKDEConnect.enable = true;
      calculator.enable = true;
      catWidget.enable = true;
    };
  };

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";
    configHome = "/home/pyndys";
  };
}
