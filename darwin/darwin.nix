{ config, pkgs, ... }:

{
  # Allow non free pkgs
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

  # List packages installed in system profile.
  environment.systemPackages = [
      pkgs.home-manager
      pkgs.mkalias
      pkgs.monitorcontrol
      pkgs.emacs
      pkgs.coreutils-prefixed
      pkgs.bruno
      pkgs.ghostty-bin
      pkgs.obsidian
      pkgs.podman
      pkgs.nerd-fonts.droid-sans-mono
  ];

  users.users.n214 = {
    home = "/Users/n214";
  };
  ids.gids.nixbld = 30000;

  # Auto upgrade nix package and the daemon service.
  nix.package = pkgs.nix;
  nix.settings = {
      "extra-experimental-features" = [ "nix-command" "flakes" ];
    };

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;
}
