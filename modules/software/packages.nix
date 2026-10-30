{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ## GUI apps
    loupe
    helium
    materialgram
    prismlauncher
    osu-lazer-bin

    ## CLI tools
    eza
    dust
    conceal
    nix-melt
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
