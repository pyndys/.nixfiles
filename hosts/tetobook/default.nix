{
  imports = [
    ./watt
    ./hardware-configuration.nix
    ./upower.nix
  ];
  networking.hostName = "tetobook";
  system.stateVersion = "26.11";
}
