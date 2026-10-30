{ inputs, ... }:
{
  networking = {
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
