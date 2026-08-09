{ config, ... }:
{
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    nvidia = {
      modesetting.enable = true;
      powerManagement = {
        enable = true;
        finegrained = false;
      };
      open = true;
      nvidiaSettings = false; # nvidia-smi is enough
      package = config.boot.kernelPackages.nvidiaPackages.stable; # stable > latest: latest occasionally breaks
    };
  };
}
