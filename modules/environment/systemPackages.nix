{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ## GUI apps
    loupe
    helium
    prismlauncher
    telegram-desktop

    ## CLI tools
    eza
    dust
    nix-melt
    mikusays
    microfetch
    fast-nix-gc
    speedtest-go
    android-tools
    payload-dumper-go

    ## Dev
    go
    nil
    ruff
    clang
    cargo
    gopls
    rustc
    python3
    opencode
    rustlings
    rust-analyzer
    markdown-oxide

    ## Others
    wl-clipboard-rs
    xwayland-satellite
    adwaita-icon-theme
    colloid-icon-theme
  ];
}
