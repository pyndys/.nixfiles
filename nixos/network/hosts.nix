## Если кратко, то это hosts файл без api.github.com (потому что оно ломает обновление flake inputs)
{pkgs, ...}: {
  networking.extraHosts = builtins.readFile (
    pkgs.runCommand "filtered-hosts" {} ''
      ${pkgs.gnused}/bin/sed '/api\.github\.com/d' ${pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/ImMALWARE/dns.malw.link/master/hosts";
        sha256 = "sha256-1eWFHdiKFyW97NCNm4/ZpiCKNI4HVChyCDG9qk+ZaUA=";
      }} > $out
    ''
  );
}
