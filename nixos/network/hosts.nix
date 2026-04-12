{pkgs, ...}: {
  networking = {
    stevenblack = {
      enable = true;
      block = ["fakenews" "gambling" "porn"];
    };
    ## Disable api.github.com because it can break flake inputs update
    extraHosts = builtins.readFile (
      pkgs.runCommand "filtered-hosts" {} ''
        ${pkgs.gnused}/bin/sed '/api\.github\.com/d' ${pkgs.fetchurl {
          url = "https://raw.githubusercontent.com/ImMALWARE/dns.malw.link/master/hosts";
          sha256 = "sha256-jS/nBlsCTd/M4SDVWIUwJ8/bIUc+nMuIvBNIWo+3/Yo=";
        }} > $out
      ''
    );
  };
}
