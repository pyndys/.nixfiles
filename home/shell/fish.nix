{pkgs, ...}: {
  programs.fish = {
    enable = true;
    package = pkgs.fishMinimal;
    shellAliases = {
      cat = "bat";
      du = "dust";
      find = "fd";
      grep = "rg";
      top = "btm";
      tree = "eza --tree";
      rm = "cnc"; # Move to trash with conceal
    };

    interactiveShellInit = ''
      set -U fish_greeting ""
    '';
  };

  home.packages = with pkgs.fishPlugins; [
    autopair
    done
    git-abbr
    puffer
    sponge
  ];
}
