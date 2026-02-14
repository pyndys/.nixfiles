{
  config,
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.niri.homeModules.niri
  ];

  programs.niri = {
    enable = true;
    package = pkgs.niri;
    settings = {
      ## Monitor
      outputs."DP-1" = {
        enable = true;
        mode = {
          height = 1080;
          width = 1920;
          refresh = 119.999;
        };
        scale = 1.0;
        variable-refresh-rate = true;
      };

      ## Keyboard
      input.keyboard.xkb = {
        layout = "us,ru";
        options = "grp:caps_toggle";
      };

      ## Cursor
      cursor = {
        theme = "Bibata-Modern-Classic";
        size = 24;
        hide-when-typing = true;
      };

      ## Windows
      prefer-no-csd = true;
      window-rules = [
        {
          geometry-corner-radius = {
            top-left = 8.0;
            top-right = 8.0;
            bottom-left = 8.0;
            bottom-right = 8.0;
          };
          clip-to-geometry = true;
        }
      ];

      ## Key bindings
      binds = with config.lib.niri.actions; {
        "Mod+Q".action.spawn = "alacritty";
        "Mod+W".action.spawn = "zen-beta";
        "Mod+E".action.spawn = ["alacritty" "-e" "yazi"];
        "Mod+D".action.spawn = ["noctalia-shell" "ipc" "call" "launcher" "toggle"];

        "Print".action.screenshot = {show-pointer = false;};
        "Mod+Print".action.screenshot-screen = {show-pointer = false;};
        "Mod+C".action = close-window;
        "Mod+Space".action = toggle-window-floating;
        "Mod+F".action = maximize-window-to-edges;
        "Mod+V".action = center-column;

        "Mod+WheelScrollDown".action = focus-workspace-down;
        "Mod+WheelScrollUp".action = focus-workspace-up;

        "XF86AudioRaiseVolume".action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+"];
        "XF86AudioLowerVolume".action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-"];

        "Mod+Left".action = focus-column-left;
        "Mod+Right".action = focus-column-right;
        "Mod+Up".action = focus-window-up;
        "Mod+Down".action = focus-window-down;

        "Mod+Tab".action = toggle-overview;
      };

      ## Autostart
      spawn-at-startup = [
        {argv = ["materialgram"];}
        {argv = ["equibop" "-m"];}
      ];

      ## For Noctalia overview
      layer-rules = [
        {
          matches = [
            {namespace = "^noctalia-overview.*";}
          ];
          place-within-backdrop = true;
        }
      ];
    };
  };
}
