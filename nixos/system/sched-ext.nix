{pkgs, ...}: {
  services.scx = {
    enable = true;
    package = pkgs.scx.rustscheds;
    scheduler = "scx_bpfland";
    extraArgs = [
      "-m"
      "performance"
      "-w"
    ];
  };
}
