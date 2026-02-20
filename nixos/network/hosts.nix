## Disable api.github.com because it can break flake inputs update
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
