{inputs, ...}: {
  imports = [
    inputs.zapret-discord-youtube.nixosModules.withTestTools
  ];
  services.zapret-discord-youtube = {
    enable = true;
    configName = "general(ALT9)";
    gameFilter = "all";
  };
}
