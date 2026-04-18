# Nix Configuration

This repository manages macOS (via `nix-darwin`) and Linux (via `home-manager`).

## Project Structure

- `darwin/darwin.nix`: macOS system-level configuration (GUI apps, system settings).
- `home-manager/`: User-level configuration and CLI tools.
  - `common.nix`: Shared CLI tools (available on both macOS and Linux).
  - `darwin.nix`: macOS-specific user tools/fonts.
  - `linux.nix`: Linux-specific user tools.
  - `default.nix`: Main entry point for Home Manager (automatically detects OS).
- `flake.nix`: The entry point for the Nix flake.

## Usage

### Managing Packages

1. **Shared CLI Tools:** Add to `home-manager/common.nix`.
2. **Mac GUI Apps:** Add to `darwin/darwin.nix` in `environment.systemPackages`.
3. **Mac-only CLI Tools:** Add to `home-manager/darwin.nix`.
4. **Linux-only CLI Tools:** Add to `home-manager/linux.nix`.

### Applying Changes

#### macOS (Darwin)
```sh
darwin-rebuild switch --flake .#mbp
```

#### Linux (Home Manager)
```sh
home-manager switch --flake .#ubuntu
```

### Updating Packages
To update the flake lock file (updates all package versions to latest):
```sh
nix flake update
```
Then run the rebuild commands above.
