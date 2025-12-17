{
  networking = {
    hostName = "cv01";
    networkmanager.enable = true;
    firewall.enable = true;
    nameservers = ["9.9.9.9" "149.112.112.112"];
  };
}
