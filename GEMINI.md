# Gemini CLI Context: Nix Config

This repository contains Nix configurations for macOS (via nix-darwin) and a virtual machine (via Home Manager).

## Project Structure
- `darwin/`: Configurations for macOS system-level packages and settings.
- `home-manager/`: User-level configurations, specifically maintained for the VM environment.
- `flake.nix`: The entry point for the Nix flake, managing dependencies and outputs.

## Maintenance Guidelines
- **Documentation:** Every time a change is committed, ensure the `README.md` is updated to reflect the current state of the repository and its usage.
- **macOS:** Maintain package configurations in `darwin/`.
- **VM:** Maintain Home Manager configurations in `home-manager/`.
- **Standards:** Ensure changes are compatible with the respective target environments before applying.
