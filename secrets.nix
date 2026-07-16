let
  me = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFpYSW9YPisJT71uv4qjckjRc6FEPo9JTbFdddPEFe8k";
in {
  "secrets/ssh/aur.age".publicKeys = [me];
  "secrets/ssh/github.age".publicKeys = [me];
  "secrets/password.age".publicKeys = [me];
  "secrets/tg-ws-proxy.age".publicKeys = [me];
}
