## Darwin
```sh
nix run nix-darwin -- switch --flake ~/nix-config
nix run nix-darwin -- switch --flake ~/nix-config#mbp
nix run nix-darwin -- switch --flake github:evantravers/dotfiles

darwin-rebuild switch --flake ~/nix-config#mbp
```

## NixOs
```sh
nix run home-manager -- switch --flake ~/nix-config#ubuntu
home-manager switch --flake ~/nix-config#ubuntu

sudo nix run home-manager --flake github:evantravers/dotfiles#ubuntu
```
