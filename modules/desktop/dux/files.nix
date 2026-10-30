{
  programs.dux-files = {
    enable = true;

    systemd = {
      enable = true;
      restartIfChanged = true;
    };

    portal.enable = true;
  };
}
