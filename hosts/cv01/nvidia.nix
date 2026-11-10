{ pkgs, ... }:
{
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    open = true;
    nvidiaSettings = false; # nvidia-smi is enough
    package = pkgs.nvidia_cachyos;
  };
}
