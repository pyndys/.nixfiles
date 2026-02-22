{inputs, ...}: {
  imports = [
    inputs.nix-flatpak.nixosModules.nix-flatpak
  ];

  services.flatpak = {
    enable = true;
    update.onActivation = true;
    packages = [
      "ru.linux_gaming.PortProton"
    ];
  };
}
