let
  # Shared age identity installed at /etc/agenix/id_ed25519 on both hosts.
  # After changing the recipients, re-encrypt everything with `agenix -r`.
  me = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFpYSW9YPisJT71uv4qjckjRc6FEPo9JTbFdddPEFe8k";
in
{
  "github-ssh.age".publicKeys = [ me ];
  "password.age".publicKeys = [ me ];
  "tg-ws-proxy.age".publicKeys = [ me ];
}
