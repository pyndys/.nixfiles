{inputs, ...}: {
  imports = [
    inputs.dms.nixosModules.dank-material-shell
  ];

  programs.dank-material-shell = {
    enable = true;

    enableSystemMonitoring = true;
    enableVPN = false;
    enableDynamicTheming = false;
    enableAudioWavelength = true;
    enableCalendarEvents = false;
  };

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";
  };
}
