{
  services.udev = {
    enable = true;
    extraRules = ''
      ## VGN
      KERNEL=="hidraw*", ATTRS{idVendor}=="3554", MODE="0666"
    '';
  };
}
