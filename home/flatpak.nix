{inputs, ...}: {
  imports = [
    inputs.nix-flatpak.homeManagerModules.nix-flatpak
  ];
  services.flatpak = {
    enable = true;
    packages = [
      "org.vinegarhq.Sober"
    ];
    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };
    overrides.global = {
      Context.filesystems = [
        "xdg-config/gtk-3.0:ro"
        "xdg-config/gtk-4.0:ro"
        "~/.icons:ro"
        "~/.themes:ro"
      ];
    };
  };
}
