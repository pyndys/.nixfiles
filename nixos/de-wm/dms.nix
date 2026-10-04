{ inputs, ... }:
{
  imports = [
    inputs.dms.nixosModules.dank-material-shell
    inputs.dms-plugin-registry.nixosModules.default
  ];
  programs.dank-material-shell = {
    enable = true;

    systemd = {
      enable = true;
      restartIfChanged = true;
    };

    ## Dependencies for dms
    enableVPN = false;
    enableDynamicTheming = true;
    enableAudioWavelength = true;
    enableCalendarEvents = false;

    plugins = {
      dankKDEConnect.enable = true;
      dankLauncherKeys.enable = true;
      calculator.enable = true;
      catWidget.enable = true;
      webSearch.enable = true;
    };
  };

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";
    configHome = "/home/pyndys";
  };
}
