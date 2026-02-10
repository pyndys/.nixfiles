## Если кратко, то это hosts файл без api.github.com (потому что оно ломает обновление flake inputs)
{pkgs, ...}: {
  networking.extraHosts = builtins.readFile (
    pkgs.runCommand "filtered-hosts" {} ''
      ${pkgs.gnused}/bin/sed '/api\.github\.com/d' ${pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/ImMALWARE/dns.malw.link/master/hosts";
        sha256 = "sha256-rJ8ngiPJVWL3+BxtdoJMkg57J5Y/CdY7+GitDU5HrWg=";
      }} > $out
    ''
  );
}
