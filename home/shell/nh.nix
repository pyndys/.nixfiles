{ config, ... }:
{
  programs.nh = {
    enable = true;
    flake = "${config.home.homeDirectory}/.nixfiles";
    clean = {
      enable = true;
      dates = "weekly";
    };
  };
}
