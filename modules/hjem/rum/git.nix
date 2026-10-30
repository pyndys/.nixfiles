{ pkgs, ... }:
{
  rum.programs.git = {
    enable = true;
    package = pkgs.gitMinimal;
    settings = {
      user = {
        name = "pyndys";
        email = "191918265+pyndys@users.noreply.github.com";
      };
    };
  };
}
