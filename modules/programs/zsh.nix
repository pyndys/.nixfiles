{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      du = "dust";
      py = "python";
    };

    promptInit = ''
      fpath+=("${pkgs.pure-prompt}/share/zsh/site-functions")
      autoload -U promptinit
      promptinit
      prompt pure
    '';
  };
}
