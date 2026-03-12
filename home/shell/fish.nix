{pkgs, ...}: {
  programs.fish = {
    enable = true;
    shellAliases = {
      cat = "bat";
      du = "dust";
      find = "fd";
      grep = "rg";
      top = "btm";
      tree = "eza --tree";
      rm = "cnc"; # Move to trash with conceal
      py = "python";
    };

    ## Disable greeting
    interactiveShellInit = ''
      set -U fish_greeting
    '';
  };

  home.packages = with pkgs.fishPlugins; [
    autopair
    git-abbr
    puffer # Bash-like
    sponge # Manage fish history
  ];
}
