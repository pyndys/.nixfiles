{
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    branch = "latest";
    modesetting.enable = true;
    powerManagement.enable = true;
    open = true;
    nvidiaSettings = false; # nvidia-smi is enough
  };
}
