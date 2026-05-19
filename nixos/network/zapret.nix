{inputs, ...}: {
  imports = [
    inputs.zapret-discord-youtube.nixosModules.default
  ];
  services.zapret-discord-youtube = {
    enable = true;
    configName = "general (FAKE_TLS_AUTO_ALT3)";
    gameFilter = "all";
  };
}
