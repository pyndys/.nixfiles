{inputs, ...}: {
  imports = [inputs.areofyl-fetch.homeManagerModules.default];

  programs.fetch = {
    enable = true;
    info = [
      "os"
      "host"
      "kernel"
      "uptime"
      "packages"
      "shell"
      "display"
      "wm"
      "terminal"
      "cpu"
      "gpu"
      "memory"
      "swap"
      "disk"
      "colors"
    ];
    speed = 0.5;
    spin = "y";
  };
}
