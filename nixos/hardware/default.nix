{
  imports = [
    ./disko.nix
    ./fstrim.nix
    ./pipewire.nix
    ./nvidia.nix
  ];

  ## Facter autodetect
  hardware.facter.reportPath = ./facter.json;
}
