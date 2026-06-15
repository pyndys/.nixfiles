{inputs, ...}: {
  imports = [
    inputs.tg-ws-proxy.homeModules.tg-ws-proxy
  ];
  services.tg-ws-proxy = {
    enable = true;
    port = 8443;
    fakeTlsDomain = "4pda.to";
    secret = "8f1ed77109c30ae80c2a75992d28c109";
  };
}
