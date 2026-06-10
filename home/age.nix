{
  inputs,
  config,
  ...
}: {
  imports = [
    inputs.agenix.homeManagerModules.default
  ];
  age = {
    identityPaths = ["${config.home.homeDirectory}/.ssh/id_ed25519"];
    secrets = {
      "secrets/ssh/aur" = {
        file = ./secrets/ssh/aur.age;
        path = "${config.home.homeDirectory}/.ssh/aur";
        mode = "0600";
      };
      "secrets/ssh/github" = {
        file = ./secrets/ssh/github.age;
        path = "${config.home.homeDirectory}/.ssh/github";
        mode = "0600";
      };
    };
  };
}
