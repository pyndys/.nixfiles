{ pkgs, ... }: {
  imports = [
    ./disko.nix
    ./hardware-configuration.nix
    ./nvidia.nix

    ../../modules/core
    ../../modules/desktop
    ../../modules/cli
    ../../modules/apps
    ../../modules/gaming
  ];
  networking.hostName = "cv01";
  system.stateVersion = "25.05";
  boot.kernelPackages = pkgs.linuxPackages_cachyos;
}
