{pkgs, ...}: {
  networking = {
    stevenblack = {
      enable = true;
      block = ["fakenews" "gambling" "porn"];
    };
    extraHosts = builtins.readFile (pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/Internet-Helper/GeoHideDNS/refs/heads/main/hosts/hosts";
      sha256 = "sha256-VT3qxwxxla2xXq116jgo6vKpbx5P+hFDwiZc/oOPp0w=";
    });
  };
}
