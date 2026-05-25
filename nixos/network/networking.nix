{
  networking = {
    hostName = "cv01";
    networkmanager.enable = true;
    firewall.enable = true;
    nameservers = ["1.1.1.1" "1.0.0.1"];
  };
}
