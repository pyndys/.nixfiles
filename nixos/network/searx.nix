{ config, ... }:
{
  services.searx = {
    enable = true;
    environmentFile = config.age.secrets."searxng".path;
    settings = {
      server = {
        port = 8000;
        bind_address = "127.0.0.1";
        secret_key = "$SEARXNG_SECRET";
        method = "GET";
      };
      general = {
        debug = false;
        enable_metrics = false;
      };
    };
  };
}
