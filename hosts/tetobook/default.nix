{
  imports = [
    ./bluetooth.nix
    ./disko.nix
    ./hardware-configuration.nix
    ./upower.nix
    ./watt

    ../../modules/core
    ../../modules/desktop
    ../../modules/cli
    ../../modules/apps
    # ../../modules/gaming
  ];
  networking.hostName = "tetobook";
  system.stateVersion = "26.11";
}
