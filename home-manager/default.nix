{ config, pkgs, ... }:

{
  home.stateVersion = "24.05"; 

  imports = [
    ./common.nix
    ./darwin.nix
    ./linux.nix
  ];

  home.file = {
  };
}
