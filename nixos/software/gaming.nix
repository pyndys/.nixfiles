{pkgs, ...}: {
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs.nur.repos.mio; [
      proton-cachyos_x86_64_v3
      proton-ge-custom
    ];
  };

  programs.gamemode = {
    enable = true;
    enableRenice = true;
    settings.general = {
      desiredgov = "performance";
      renice = 10;
    };
  };

  environment.systemPackages = with pkgs; [
    heroic
    osu-lazer-bin # appimage ver with online score
    prismlauncher
  ];
}
