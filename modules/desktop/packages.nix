{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    morewaita-icon-theme
    xwayland-satellite
  ];
}
