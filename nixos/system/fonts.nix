{pkgs, ...}: {
  fonts.packages = with pkgs; [
    adwaita-fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
    noto-fonts
  ];
}
