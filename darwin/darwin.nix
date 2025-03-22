{ config, pkgs, ... }:

{
  # Allow non free pkgs
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = [
      pkgs.home-manager
      pkgs.mkalias
      pkgs.alt-tab-macos
      pkgs.monitorcontrol
      pkgs.duckdb
      pkgs.alacritty
      pkgs.bruno
      pkgs.kconf
      pkgs.obsidian
      pkgs.podman
      pkgs.vscode-with-extensions
      pkgs.nerd-fonts.droid-sans-mono
  ];

  #homebrew = {
  #  enable = true;
  #  brews = [
  #    "brew-bundle"
  #    "mas"
  #    "g-ls"
  #  ];
  #  taps = [ "homebrew/bundle"];
  #  casks = [
  #    "hammerspoon"
  #    "firefox"
  #    "iina"
  #    "maccy"
  #    "the-unarchiver"
  #  ];
  #  masApps = {
  #    #"Yoink" = 457622435;
  #  };
  #  onActivation.autoUpdate = true;
  #  onActivation.upgrade = true;
  #};
  users.users.n214 = {
    home = "/Users/n214";
  };
  ids.gids.nixbld = 30000;

  #  fonts.packages = [
  #  (pkgs.nerdfonts.override { fonts = ["JetBrainsMono"]; })
  #];

  # Auto upgrade nix package and the daemon service.
  nix.package = pkgs.nix;
  nix.settings = {
      "extra-experimental-features" = [ "nix-command" "flakes" ];
    };

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true;  # default shell on catalina

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;

  # The platform the configuration will be used on.
  # nixpkgs.hostPlatform = "aarch64-darwin";
}
