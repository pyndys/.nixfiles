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
    shell = config.programs.zsh.package;
    hashedPasswordFile = config.age.secrets."password".path;
  };
}
