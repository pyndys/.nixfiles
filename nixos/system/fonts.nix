{pkgs, ...}: {
  fonts.packages = with pkgs; [
    nerd-fonts.symbols-only
    nerd-fonts.jetbrains-mono
    noto-fonts
    adwaita-fonts
  ];
}
