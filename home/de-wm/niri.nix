{
  config,
  inputs,
  pkgs,
  ...
}: {
  imports = with inputs.niri.homeModules; [
    niri
    stylix
  ];

  programs.niri = {
    enable = true;
    package = pkgs.niri;
    settings = {
      ## Monitors
      outputs = {
        "HDMI-A-1" = {
          enable = true;
          mode = {
            height = 1080;
            width = 1920;
            refresh = 119.999;
          };
          scale = 1.0;
          variable-refresh-rate = true;
        };
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

      ## Key bindings
      binds = with config.lib.niri.actions; {
        "Mod+Q".action.spawn = "foot";
        "Mod+W".action.spawn = "zen-beta";
        "Mod+E".action.spawn = "pcmanfm";
        "Mod+D".action.spawn = ["dms" "ipc" "spotlight" "toggle"];

        "Print".action.screenshot = {show-pointer = false;};
        "Mod+Print".action.screenshot-screen = {show-pointer = false;};
        "Mod+C".action = close-window;
        "Mod+Space".action = toggle-window-floating;
        "Mod+F".action = maximize-window-to-edges;
        "Mod+V".action = center-column;

        "Mod+WheelScrollDown".action = focus-workspace-down;
        "Mod+WheelScrollUp".action = focus-workspace-up;

        "Mod+Left".action = focus-column-left;
        "Mod+Right".action = focus-column-right;
        "Mod+Up".action = focus-window-up;
        "Mod+Down".action = focus-window-down;

        "Mod+Tab".action = toggle-overview;
      };
      hotkey-overlay.skip-at-startup = true; # Skip screen with bindings

      ## Autostart
      spawn-at-startup = [
        {argv = ["materialgram"];}
        {argv = ["equibop" "-m"];}
        {command = ["valent" "--gapplication-service"];}
      ];
    };
  };
}
