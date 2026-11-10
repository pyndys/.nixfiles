{
  config,
  lib,
  pkgs,
  ...
}:
let
  ip = "127.0.0.1";
in
{
  systemd.user.services.tg-ws-proxy = {
    description = "Telegram MTProto WebSocket bridge proxy";
    wantedBy = [ "default.target" ];

    serviceConfig = {
      EnvironmentFile = config.age.secrets.tg-ws-proxy.path;
      ExecStart = "${lib.getExe pkgs.tg-ws-proxy-rs} --host ${ip} --link-ip ${ip} --port 8443 --listen-faketls-domain 4pda.to";
      Restart = "on-failure";
      RestartSec = 5;
    };
  };
}
