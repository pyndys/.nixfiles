{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    helium
    libreoffice
    metrolist
    telegram-desktop
  ];
}
