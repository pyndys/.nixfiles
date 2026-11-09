{ config, ... }: {
  programs.nh = {
    enable = true;
    flake = "${config.hjem.users.pyndys.directory}/.nixfiles";
    clean = {
      enable = true;
      extraArgs = "--optimise";
    };
  };
}
