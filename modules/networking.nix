{ inputs, ... }: {
  networking = {
    networkmanager.enable = true;
    firewall.enable = true;

    nameservers = [
      "1.1.1.1"
      "1.0.0.1"
    ];

    stevenblack = {
      enable = true;
      block = [
        "fakenews"
        "gambling"
        "porn"
      ];
    };
    hostFiles = [ "${inputs.geohide}/hosts/eu/hosts" ];
  };
}
