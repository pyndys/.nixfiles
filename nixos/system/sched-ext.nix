{pkgs, ...}: {
  services.scx = {
    enable = true;
    package = pkgs.scx.rustscheds;
    scheduler = "scx_cosmos";
    extraArgs = [
      "-c"
      "0"
      "-p"
      "0"
    ];
  };
}
