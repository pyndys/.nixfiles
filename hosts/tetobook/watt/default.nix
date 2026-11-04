{
  services.watt = {
    enable = true;
    extraFlags = [
      "--config=${./config.toml}"
      "-qqq"
    ];
  };
}
