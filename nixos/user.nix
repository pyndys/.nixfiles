{
  config,
  pkgs,
  ...
}: {
  users.users.pyndys = {
    isNormalUser = true;
    description = "pyndys";
    extraGroups = ["networkmanager" "wheel" "input"];
    shell = pkgs.fishMinimal;
    hashedPasswordFile = config.age.secrets."nixos/secrets/password".path;
  };
}
