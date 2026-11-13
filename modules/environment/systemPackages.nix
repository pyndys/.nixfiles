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
    nix-auth
    nix-melt
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
    xwayland-satellite
    adwaita-icon-theme
    colloid-icon-theme
  ];
}
