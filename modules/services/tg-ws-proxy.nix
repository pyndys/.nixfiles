{ pkgs, ... }:
let
  ip = "127.0.0.1";
in
{
  systemd.services.tg-ws-proxy = {
    description = "Telegram MTProto WebSocket bridge proxy";
    wantedBy = [ "multi-user.target" ];
    wants = [ "network-online.target" ];
    after = [ "network-online.target" ];
    environment.TG_SECRET = "0123456789abcdef0123456789abcdef";
    serviceConfig = {
      ExecStart = "${pkgs.tg-ws-proxy}/bin/tg-ws-proxy --host ${ip} --link-ip ${ip} --port 8443 --listen-faketls-domain 4pda.to";
      Restart = "on-failure";
      RestartSec = 5;
    };
  };
}
