{ config, ... }: {
  services.mihomo = {
    enable = true;
    configFile = config.age.secrets."clash-config".path;
    tunMode = true;
  };
}
