# Just my dotfiles for NixOS

|env     | attribute                    |
|--------|------------------------------|
|hosts | cv01, tetobook |
|desktop | niri + dms |
|shell | zsh |
|terminal| ghostty |
|editor | helix |

and others...

## Installation

```sh
# nix-command + flakes in the ISO
export NIX_CONFIG="experimental-features = nix-command flakes"
```

```sh
# clone the repo
git clone https://github.com/pyndys/.nixfiles.git
cd .nixfiles
```

```sh
# disko: cv01 or tetobook, wipes /dev/nvme0n1
sudo -E nix run github:nix-community/disko/latest -- --mode destroy,format,mount --flake .#cv01
```

```sh
# age key from the Ventoy drive (passwordless)
sudo mkdir -p /mnt/etc/agenix
sudo install -m 600 -o root -g root /run/media/nixos/Ventoy/id_ed25519 /mnt/etc/agenix/id_ed25519
```

```sh
# install + reboot
sudo -E nixos-install --flake .#cv01 --root /mnt --no-root-passwd \
  --option 'extra-substituters' 'https://nyx-cache.chaotic.cx/' \
  --option extra-trusted-public-keys "nyx-cache.chaotic.cx:dJxTrgMC3V3cFfyIiBQDQorG6k1LsqurH/srpMSq7qk="
reboot
```
