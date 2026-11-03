{
  imports = [
    ./watt
    ./hardware-configuration.nix
    ./upower.nix
  ];
  networking.hostName = "teto";
  system.stateVersion = "26.11";
}
