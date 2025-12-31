{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.zen-browser.homeModules.beta
  ];
  programs.zen-browser = {
    enable = true;
    profiles.pyndys = {
      name = "pyndys";
      isDefault = true;
      extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
        bitwarden
        darkreader
        decentraleyes
        istilldontcareaboutcookies
        material-icons-for-github
        privacy-badger
        return-youtube-dislikes
        sponsorblock
        startpage-private-search
        ublock-origin
      ];
      settings = {
        "network.trr.mode" = 2;
        "network.trr.uri" = "https://dns.quad9.net/dns-query";
      };
    };
  };
}
