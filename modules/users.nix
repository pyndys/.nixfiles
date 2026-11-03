{ config, ... }:
{
  users.users.pyndys = {
    isNormalUser = true;
    description = "pyndys";
    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
    ];
    shell = config.programs.fish.package;
    hashedPasswordFile = config.age.secrets."password".path;
  };
}
