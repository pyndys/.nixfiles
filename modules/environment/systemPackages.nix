{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ## GUI apps
    helium
    metrolist
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

    ## Dev
    nil
    ruff
    gopls
    python3
    opencode
    rust-analyzer
    markdown-oxide

    ## Others
    morewaita-icon-theme
    xwayland-satellite
  ];
}
