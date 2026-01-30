{pkgs, ...}: {
  services = {
    displayManager.ly.enable = true;
    desktopManager.plasma6.enable = true;
  };

  environment = {
    plasma6.excludePackages = with pkgs.kdePackages; [
      elisa
      konsole
      discover
    ];
  };
}
