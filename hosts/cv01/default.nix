{
  imports = [
    ./disko.nix
    ./hardware-configuration.nix
  ];
  networking.hostName = "cv01";
  system.stateVersion = "25.05";
}
