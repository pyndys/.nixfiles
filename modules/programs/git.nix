{ pkgs, ... }: {
  programs.git = {
    enable = true;
    package = pkgs.gitMinimal;
    config = {
      user = {
        name = "pyndys";
        email = "191918265+pyndys@users.noreply.github.com";
      };
    };
  };
}
