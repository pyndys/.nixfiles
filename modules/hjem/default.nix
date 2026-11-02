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
        NH_FLAKE = "${config.hjem.users.pyndys.directory}/.nixfiles";
        GAT_FORMAT = "terminal16";
        GAT_THEME = "vim";
      };
      imports = [
        ./rum
        ./matugen.nix
      ];
    };
  };
}
