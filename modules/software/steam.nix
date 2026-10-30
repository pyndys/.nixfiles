{ inputs, pkgs, ... }:
{
  imports = [ inputs.steam-config-nix.nixosModules.default ];
  programs.steam = {
    enable = true;
    package = pkgs.millennium-steam;
    ## Needed for some games (e.g. Garry's Mod)
    fontPackages = with pkgs; [ liberation_ttf ];

    config = {
      enable = true;
      onSteamRunning = "close";
      defaultCompatTool = pkgs.proton-cachyos_x86_64_v3;
      apps."440" = {
        name = "Team Fortress 2";
        enable = true;
        env.SDL_VIDEO_DRIVER = "wayland";
        args = [
          "-vulkan"
          "-novid"
          "-nojoy"
          "+mat_queue_mode=2"
          "+fps_max=120"
          "-freq=120"
        ];
        files.game.place = {
          "tf/custom/darhud".source = inputs.darhud;
          "tf/custom/helltaker-portraits".source = pkgs.fetchzip {
            url = "https://filecache45.gamebanana.com/mods/helltaker-casual.zip";
            hash = "sha256-1DO+0IYoK+ggf47b5791F7jeopuOB0JiUoLJ79vC6rw=";
          };
        };
      };
    };
  };
}
