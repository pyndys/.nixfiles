{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.aagl.nixosModules.default
  ];

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      extraCompatPackages = with pkgs.nur.repos.mio; [
        proton-cachyos_x86_64_v3
        proton-ge-custom
      ];
    };

    gamemode = {
      enable = true;
      enableRenice = true;
      settings.general = {
        desiredgov = "performance";
        renice = 10;
      };
    };

    ## Anime Launchers
    anime-game-launcher.enable = false;
    anime-games-launcher.enable = false;
    honkers-railway-launcher.enable = false;
    honkers-launcher.enable = false;
    wavey-launcher.enable = false;
    sleepy-launcher.enable = true;
  };

  environment.systemPackages = with pkgs; [
    heroic
    osu-lazer-bin # appimage ver with online score
  ];
}
