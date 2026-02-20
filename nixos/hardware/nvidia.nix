{config, ...}: {
  services.xserver.videoDrivers = ["nvidia"];

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
      nvidiaSettings = false; # GUI nvidia settings on wayland sucks
      package = config.boot.kernelPackages.nvidiaPackages.stable; # Latest good but it breaks sometimes
    };
  };
}
