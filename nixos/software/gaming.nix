{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.aagl.nixosModules.default
  ];

  ## Steam customization
  nixpkgs.overlays = [
    inputs.millennium.overlays.default
  ];

  programs = {
    steam = {
      enable = true;
      package = pkgs.millennium-steam;
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

    sleepy-launcher.enable = true;
  };

  environment.systemPackages = with pkgs; [
    heroic
    osu-lazer-bin # appimage ver with online score
  ];
}
