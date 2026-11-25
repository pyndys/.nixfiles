{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    helium
    libreoffice
    telegram-desktop
  ];
}
