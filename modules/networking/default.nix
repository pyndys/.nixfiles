{
  networking = {
    enableIPv6 = false;
  };
  imports = [
    ./networkmanager.nix
    ./firewall.nix
  ];
}
