{config, ...}: {
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings = {
      "aur.archlinux.org" = {
        identityFile = config.age.secrets."secrets/ssh/aur".path;
        user = "aur";
      };
      "github.com" = {
        identityFile = config.age.secrets."secrets/ssh/github".path;
        user = "git";
      };
    };
  };
}
