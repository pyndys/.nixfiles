let
  me = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFpYSW9YPisJT71uv4qjckjRc6FEPo9JTbFdddPEFe8k";
in
{
  "github-ssh.age".publicKeys = [ me ];
  "password.age".publicKeys = [ me ];
}
