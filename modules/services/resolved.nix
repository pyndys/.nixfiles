{
  # systemd-resolved becomes the local stub resolver. NetworkManager passes
  # per-link DNS servers to it (e.g. the router, which serves local `.lan`
  # names), while these are used as the global forwarders.
  services.resolved = {
    enable = true;
    settings.Resolve = {
      DNS = [
        "1.1.1.1"
        "1.0.0.1"
      ];
      FallbackDNS = [
        "9.9.9.9"
        "149.112.112.112"
      ];
      DNSSEC = "allow-downgrade";
    };
  };
}
