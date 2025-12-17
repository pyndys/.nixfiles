{pkgs, ...}: {
  services.searx = {
    enable = true;
    package = pkgs.searxng;
    settings = {
      general = {
        enable_metrics = false;
      };
      server = {
        port = 8080;
        secret_key = ""; # only for localhost
        bind_address = "127.0.0.1";
      };
      ui = {
        default_locale = "ru";
      };
      search = {
        safe_search = 0;
        autocomplete = "duckduckgo";
      };
    };
  };
}
