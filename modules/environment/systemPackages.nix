{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ## GUI apps
    loupe
    helium
    prismlauncher
    telegram-desktop

    ## CLI tools
    dust
    tree
    aria2
    nix-auth
    nix-melt
    microfetch
    speedtest-go
    android-tools

    ## Dev
    nil
    ruff
    gopls
    python3
    opencode
    rust-analyzer
    markdown-oxide

    ## Others
    adwaita-icon-theme
    xwayland-satellite
  ];
}
