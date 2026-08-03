{pkgs, ...}: {
  networking = {
    stevenblack = {
      enable = true;
      block = ["fakenews" "gambling" "porn"];
    };

    ## GeoHide hosts
    extraHosts = builtins.readFile (pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/Internet-Helper/GeoHideDNS/refs/heads/main/hosts/hosts";
      sha256 = "sha256-VT3qxwxxla2xXq116jgo6vKpbx5P+hFDwiZc/oOPp0w=";
    });

    ## osu!lazer map downloading fix
    hosts."77.223.98.115" = [
      "spectator.osu.ppy.sh"
      "m1.ppy.sh"
      "m2.ppy.sh"
      "m3.ppy.sh"
      "bm11.osu.ppy.sh"
      "bm14.osu.ppy.sh"
    ];
  };
}
