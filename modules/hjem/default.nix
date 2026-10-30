{ inputs, config, ... }:
{
  hjem = {
    extraModules = with inputs; [
      hjem-rum.hjemModules.default
      nixugen.hjemModules.default
    ];
    users.pyndys = {
      enable = true;
      directory = "/home/pyndys";
      user = "pyndys";
      environment.sessionVariables = {
        EDITOR = "hx";
        VISUAL = "hx";
        FZF_DEFAULT_OPTS = "--color=16";
        NH_FLAKE = "${config.hjem.users.pyndys.directory}/.nixfiles";
      };
      imports = [
        ./rum
        ./matugen.nix
      ];
    };
  };
}
