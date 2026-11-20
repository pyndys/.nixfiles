{ pkgs, ... }: {
  imports = [
    ./bluetooth.nix
    ./watt
    ./hardware-configuration.nix
    ./upower.nix
  ];
  networking.hostName = "tetobook";
  system.stateVersion = "26.11";
  boot.kernelPackages = pkgs.linuxPackages_cachyos-eevdf;
}
