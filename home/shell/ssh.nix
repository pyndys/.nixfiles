{ config, ... }:
{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings = {
      "aur.archlinux.org" = {
        identityFile = "${config.home.homeDirectory}/.ssh/aur";
        user = "aur";
      };
      "github.com" = {
        identityFile = "${config.home.homeDirectory}/.ssh/github";
        user = "git";
      };
      "codeberg.org" = {
        identityFile = "${config.home.homeDirectory}/.ssh/codeberg";
        user = "git";
      };
    };
  };

  services.ssh-agent = {
    enable = true;
  };
}
