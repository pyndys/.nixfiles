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

    ## Disable greeting
    interactiveShellInit = ''
      set -U fish_greeting
    '';
  };

  home.packages = with pkgs.fishPlugins; [
    autopair
    git-abbr
    sponge # Manage fish history
  ];
}
