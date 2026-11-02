{
  imports = [
    ./disko.nix
    ./hardware-configuration.nix
    ./nvidia.nix
  ];
  networking.hostName = "cv01";
  system.stateVersion = "25.05";
}
