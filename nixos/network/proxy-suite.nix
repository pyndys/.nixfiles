{
  inputs,
  config,
  ...
}:
{
  imports = [
    inputs.proxy-suite.nixosModules.default
  ];
  services.proxy-suite = {
    enable = true;

    tgWsProxy = {
      enable = true;
      listener.port = 8443;
      secretFile = config.age.secrets."tg-ws-proxy".path;
      fakeTlsDomain = "4pda.to";
    };

    zapret = {
      enable = true;
      zapret-discord-youtube.configName = "general (ALT9)";
    };
  };
}
