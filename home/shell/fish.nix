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
    };
    interactiveShellInit = ''
      set -U fish_greeting ""
    '';
  };

  home.packages = with pkgs.fishPlugins; [
    autopair
    done
    sponge
    git-abbr
  ];
}
