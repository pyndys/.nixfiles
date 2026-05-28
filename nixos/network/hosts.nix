{pkgs, ...}: {
  networking = {
    stevenblack = {
      enable = true;
      block = ["fakenews" "gambling" "porn"];
    };
    extraHosts = builtins.readFile (pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/Internet-Helper/GeoHideDNS/refs/heads/main/hosts/hosts";
      sha256 = "sha256-eXbqRP+ytXWtEuP0XoF7SXAPqHp0OQ8ikYA1csCmj9I=";
    });
  };
}
