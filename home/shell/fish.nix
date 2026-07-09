{pkgs, ...}: {
  programs.fish = {
    enable = true;
    package = pkgs.fishMinimal;

    shellAliases = {
      cat = "bat";
      du = "dust";
      tree = "eza --tree";
      rm = "cnc"; # Move to trash with conceal
      py = "python";
    };

    plugins = [
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src;
      }
      {
        name = "git-abbr";
        src = pkgs.fishPlugins.git-abbr.src;
      }
      {
        name = "sponge";
        src = pkgs.fishPlugins.sponge.src;
      }
    ];

    ## Disable greeting
    interactiveShellInit = ''
      set -U fish_greeting
    '';
  };
}
