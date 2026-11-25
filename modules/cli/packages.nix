{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ## CLI tools
    android-tools
    aria2
    dust
    microfetch
    nix-auth
    nix-melt
    speedtest-go
    tree

    ## Dev
    gopls
    markdown-oxide
    nil
    opencode
    python3
    ruff
    rust-analyzer
  ];
}
