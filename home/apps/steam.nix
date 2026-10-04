{ inputs, pkgs, ... }:
{
  imports = [
    inputs.steam-config-nix.homeModules.default
    inputs.nixos-millennium.homeManagerModules.default
  ];
  programs.steam = {
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
        artwork = {
          hero = pkgs.fetchurl {
            url = "https://cdn2.steamgriddb.com/hero/a62dfaf1f96d5d55845a6cbf974ade3e.png";
            hash = "sha256-euTqZ+OuLxN8qY8R9Lo2plNFFl7bQh1xGWXX+KU9V8k=";
          };
          logo = pkgs.fetchurl {
            url = "https://cdn2.steamgriddb.com/logo/61ca67b3d734fb54a6107534360f0e58.png";
            hash = "sha256-MgEKWgRXDHVPfPTeZ61scKlryxdiOM4BBY9v+IVtZ+s=";
          };
        };
        files.game.place = {
          "tf/custom/darhud".source = inputs.darhud;
          "tf/custom/helltaker-portraits".source = pkgs.fetchzip {
            url = "https://filecache45.gamebanana.com/mods/helltaker-casual.zip";
            hash = "sha256-1DO+0IYoK+ggf47b5791F7jeopuOB0JiUoLJ79vC6rw=";
          };
        };
      };
    };
    theme = pkgs.millenniumThemes.material-theme;
    plugins = with pkgs.millenniumPlugins; [ size-on-disk ];
    millenniumConfig.themes.conditions."material-theme-steam" = {
      "Achievements Icons Shape" = "Rounded Square";
      "Bottom Bar Style" = "Floating";
      "Color" = "Matugen";
      "Font" = "Google Sans";
      "Game Icons Shape" = "Rounded Square";
      "Groups/Curators Picture Shape" = "Circle";
      "Hide Activity Posting" = "yes";
      "Hide Add Shelf" = "yes";
      "Hide Big Picture Mode Button" = "yes";
      "Hide Broadcasting Containers" = "yes";
      "Hide News Button" = "yes";
      "Hide Scrollbar" = "yes";
      "Hide URL Bar" = "yes";
      "Hide Window Control Buttons" = "yes";
      "Icons" = "Rounded";
      "Loading Style" = "Color Scheme";
      "Profile Picture Shape" = "Circle";
      "Store Header Always Visible" = "yes";
      "Toolbar Icon" = "Gemini";
      "Toolbar Title Based on Icon" = "no";
      "What's New" = "Hide";
    };
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # ublock origin
      { id = "kdbmhfkmnlmbkgbabkdealhhbfhlmmon"; } # steamdb
      { id = "ngonfifpkpeefnhelnfdkficaiihklid"; } # protondb
    ];
  };
}
