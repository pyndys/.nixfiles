{ osConfig, ... }:
{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings = {
      "aur.archlinux.org" = {
        identityFile = osConfig.age.secrets."aur".path;
        user = "aur";
      };
      "github.com" = {
        identityFile = osConfig.age.secrets."github".path;
        user = "git";
      };
      "codeberg.org" = {
        identityFile = osConfig.age.secrets."codeberg".path;
        user = "git";
      };
    };
  };

  services.ssh-agent = {
    enable = true;
  };
}
