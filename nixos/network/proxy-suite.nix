{inputs, ...}: {
  imports = [
    inputs.proxy-suite.nixosModules.default
  ];
  services.proxy-suite = {
    enable = true;

    tgWsProxy = {
      enable = true;
      port = 8443;
      secret = "bbd5d0b72065c54fbb97859b5d501651";
      fakeTlsDomain = "4pda.to";
    };

    zapret = {
      enable = true;
      configName = "general(ALT9)";
    };
  };
}
