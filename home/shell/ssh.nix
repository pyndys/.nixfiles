{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings = {
      "aur.archlinux.org" = {
        identityFile = "~/.ssh/aur";
        user = "aur";
      };
    };
  };
}
