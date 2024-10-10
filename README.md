## Darwin
```sh
nix run nix-darwin -- switch --flake ~/nix-config
nix run nix-darwin -- switch --flake ~/nix-config#mbp
nix run nix-darwin -- switch --flake github:evantravers/dotfiles

darwin-rebuild switch --flake ~/nix-config#mbp
```

## NixOs
```sh
sudo nixos-install --flake ~/nix-config#ubuntu
sudo nixos-install --flake github:evantravers/dotfiles#ubuntu
```