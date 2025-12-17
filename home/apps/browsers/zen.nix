{pkgs, ...}: {
  programs.zen-browser = {
    enable = true;
    profiles.pyndys = {
      name = "pyndys";
      isDefault = true;
      extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        privacy-badger
        sponsorblock
        decentraleyes
        return-youtube-dislikes
        darkreader
        bitwarden
        material-icons-for-github
        istilldontcareaboutcookies
      ];
      settings = {
        "network.trr.mode" = 2;
        "network.trr.uri" = "https://dns.quad9.net/dns-query";
      };
    };
  };
}
