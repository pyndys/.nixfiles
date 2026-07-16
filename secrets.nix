let
  me = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFpYSW9YPisJT71uv4qjckjRc6FEPo9JTbFdddPEFe8k";
in {
  "/home/secrets/ssh/aur.age".publicKeys = [me];
  "/home/secrets/ssh/github.age".publicKeys = [me];
  "/nixos/secrets/password.age".publicKeys = [me];
  "/nixos/secrets/tg-ws-proxy.age".publicKeys = [me];
}
