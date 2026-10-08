{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    package = pkgs.gitMinimal;
    settings = {
      user.name = "pyndys";
      user.email = "mikumiku@beam";
    };
  };
}
