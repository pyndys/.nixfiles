{pkgs, ...}: {
  services.scx-loader = {
    enable = true;
    schedsPackages = [pkgs.scx.rustscheds];
    config = {
      default_sched = "scx_bpfland";
      default_mode = "Auto";
    };
  };
}
