{
  inputs,
  config,
  ...
}: {
  imports = [
    inputs.agenix.homeManagerModules.default
  ];
  age.secrets."secrets/ssh/aur" = {
    file = ./secrets/ssh/aur.age;
    path = "${config.home.homeDirectory}/.ssh/aur";
    mode = "0600";
  };
}
