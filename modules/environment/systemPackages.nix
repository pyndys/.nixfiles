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
    nix-melt
    mikusays
    microfetch
    speedtest-go
    android-tools
    payload-dumper-go

    ## Dev
    nil
    ruff
    gopls
    python3
    opencode
    rust-analyzer
    markdown-oxide

    ## Others
    wl-clipboard-rs
    xwayland-satellite
    adwaita-icon-theme
    colloid-icon-theme
  ];
}
