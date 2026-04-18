{ config, pkgs, lib, ... }:

lib.mkIf pkgs.stdenv.hostPlatform.isDarwin {
  home.packages = [
    pkgs.kitty
    pkgs.nerd-fonts.fira-code
    pkgs.nerd-fonts.inconsolata
  ];
}
